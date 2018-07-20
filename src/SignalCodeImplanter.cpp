
#include "SignalCodeImplanter.hpp"

using namespace llvm;

extern char target_symbol[];

SignalCodeImplanter::SignalCodeImplanter(LLVMContext& context)
	: m_context(context)
{
	p_Analyzer = nullptr;
}

bool SignalCodeImplanter::TakeAnalysisResults(Analyzer* analyzer)
{
	if(p_Analyzer == nullptr)
	{
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}

	else
	{
		delete p_Analyzer;
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}


	if(analyzer->getAnalysisType() == Analyzer::FINE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::FINE_GRAINED_LEVEL;
		return true;
	}
	else if(analyzer->getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::COARSE_GRAINED_LEVEL;
		return true;
	}
	else
	{
		std::cout << "[ERROR] Undefined Analysis Type " << std::endl;
		return false;
	}


	/*
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)

	{
		std::cout << "node_id: " << std::hex << iter->second << std::oct << std::endl;
	}
	*/
}

bool SignalCodeImplanter::run()
{

	if(m_level == FINE_GRAINED_LEVEL)
	{
		std::cout << " -RunFineGrainedLevel runs.." << std::endl;
		
		if(RunFineGrainedLevel() != true)
		{
			std::cout << " -RunFineGrainedLevel Fails" << std::endl;
		}
	
		else
		{
			std::cout << " -RunFineGrainedLevel has finished!" << std::endl;
		}
	}


	else if(m_level == COARSE_GRAINED_LEVEL)
	{
		std::cout << " -RunCoarseGrainedLevel runs.." << std::endl;
		
		if(RunCoarseGrainedLevel() != true)
		{
			std::cout << " -RunCoarseGrainedLevel Fails" << std::endl;
		}
		else
		{
			std::cout << " -RunCoarseGrainedLevel has finished!" << std::endl;
		}

	}

	else
	{
		std::cout << " [ERROR] Undefined Analysis Type!" << std::endl;
		return false;
	}

	GenerateImplantedIRmodule();

	return true;
}


bool SignalCodeImplanter::RunFineGrainedLevel()
{

	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */

	std::cout << "  -implant enqueue_signature runs.." << std::endl;

	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{
		llvm::BasicBlock *Target = iter->first;
		unsigned int node_id = iter->second;
		llvm::Instruction *TargetCloned 
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		ImplantSignalCodes(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned
				);
	}
	
	std::cout << "  -implant enqueue_signature has finished!" << std::endl;
	
	std::cout << "  -implant initialize_monitor runs.." << std::endl;
	
	/* implant sig_initializer */
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);
	std::cout << "  -implant initialize_monitor has finished!" << std::endl;

	
	return true;
}



bool SignalCodeImplanter::RunCoarseGrainedLevel()
{
	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{
		llvm::BasicBlock *Target = iter->first;
		unsigned int node_id = iter->second;
		llvm::Instruction *TargetCloned 
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		ImplantSignalCodes(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned
				);
	}
	
	/* implant sig_initializer */
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);


	return true;
}


/* Implant signal codes */
bool SignalCodeImplanter::ImplantSignalCodes(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder, 
		BasicBlock *bb,
		unsigned int node_id,
		Instruction *inst
	){

	if(bb->size() > 0)
	{
		inst->setParent(bb);
		llvm::Instruction *newInst = inst->clone();


		/* for checker */
		if(newInst->getNumOperands() > 1)
		{	
			llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
			Value *node_id_value = llvm::ConstantInt::get(i32_type, node_id, true);
			newInst->setOperand(0, node_id_value);
		}

		
		/* Front of BasicBlock */
		bb->getInstList().push_front(newInst);
		

		/* Before ret or br */
		//bb->getInstList().insert(--(bb->getInstList().end()), newInst);
		
		
		/* End of BasicBlock: ret, br */
		//bb->getInstList().push_back(newInst);
	}

	return true;
}

/* Find Target BasicBlock to be implanted at */
llvm::BasicBlock *SignalCodeImplanter::SearchTargetBasicBlock(
		ParsedIRmodule &m, 
		std::string fname
	)
{

	llvm::BasicBlock *SavedBB = nullptr;

  	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == fname){

			llvm::Function::BasicBlockListType::iterator iter2;
			iter2 = f.getBasicBlockList().begin();

			llvm::BasicBlock &bb = *iter2;
			
			SavedBB = &bb;
			break;
		}
	}

	return SavedBB;
}


/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforInitializer(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;

	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

			//std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}


	ReturnInst = *(InstList.begin());
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}

/* Generate Implanted IRmodule */
bool SignalCodeImplanter::GenerateImplantedIRmodule()
{
	Module* writeModule = p_ParsedIRmodule->release();
	std::error_code EC;
	raw_fd_ostream OS("outputs/translated.bc", EC, sys::fs::F_None);
	
	WriteBitcodeToFile(writeModule, OS, true, nullptr, true, nullptr);
	OS.flush();

	return true;
}

/* declare sig_initializer, sig_checker */
bool SignalCodeImplanter::DeclareSignalCodes(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder
	)
{

	/* Function-type : void return/ no param */
	FunctionType *void_return_one_integer 
		= llvm::FunctionType::get(builder.getVoidTy(), IntegerType::get(context, 32), false);
	
	FunctionType *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
	
	
	/* General Puts Function */

	/* sig_initializer */
	Constant *checker1_ptr = m->getOrInsertFunction("init_monitor", funcType); 
	Function *checker1 = cast<Function>(checker1_ptr);

	/* sig_checker */
	Constant *checker2_ptr = m->getOrInsertFunction("enqueue_signature", void_return_one_integer); 
	Function *checker2 = cast<Function>(checker2_ptr);


	/* Call checker Set */
	Constant *gcdptr = m->getOrInsertFunction("CallcheckerSet", funcType); 
	Function *gcd = cast<Function>(gcdptr);
	llvm::BasicBlock *entry = BasicBlock::Create(context, "entry", gcd);
	IRBuilder<> CallChecker_builder(entry);
	
	llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
	Value *constant_one = llvm::ConstantInt::get(i32_type, 1, true);

	//Value *call_checker1 = CallChecker_builder.CreateCall(checker1);
	//Value *call_checker2 = CallChecker_builder.CreateCall(checker2, constant_one);
	CallChecker_builder.CreateCall(checker1);
	CallChecker_builder.CreateCall(checker2, constant_one);
	
	CallChecker_builder.CreateRetVoid();
	
	return true;
}
