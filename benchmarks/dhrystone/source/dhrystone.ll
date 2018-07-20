; ModuleID = 'dhrystone.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }
%struct.timeval = type { i64, i64 }

@Reg = global i32 0, align 4
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Ptr_Glob = common global %struct.record* null, align 8
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 16
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 16
@Ch_2_Glob = common global i8 0, align 1
@Int_Glob = common global i32 0, align 4
@Ch_1_Glob = common global i8 0, align 1
@End_Time = common global i64 0, align 8
@Begin_Time = common global i64 0, align 8
@User_Time = common global i64 0, align 8
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Dhrystone Benchmark, Version 2.1 (Language: C)\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Program compiled with 'register' attribute\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Program compiled without 'register' attribute\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Please give the number of runs through the benchmark: \00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Execution starts, %d runs through Dhrystone\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Final values of the variables used in the benchmark:\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Int_Glob:            %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"        should be:   %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Bool_Glob:           %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Ch_1_Glob:           %c\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"        should be:   %c\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Ch_2_Glob:           %c\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Arr_1_Glob[8]:       %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Arr_2_Glob[8][7]:    %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"        should be:   Number_Of_Runs + 10\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Ptr_Glob->\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"  Ptr_Comp:          %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"        should be:   (implementation-dependent)\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"  Discr:             %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"  Enum_Comp:         %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"  Int_Comp:          %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"  Str_Comp:          %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, SOME STRING\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Next_Ptr_Glob->\0A\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"        should be:   (implementation-dependent), same as above\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Int_1_Loc:           %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Int_2_Loc:           %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Int_3_Loc:           %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Enum_Loc:            %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Str_1_Loc:           %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Str_2_Loc:           %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\0A\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"Measured time too small to obtain meaningful results\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Please increase number of runs\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Microseconds for one run through Dhrystone: \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"%6.1f \0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Dhrystones per Second:                      \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 16
  %8 = alloca [31 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  %14 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %11, i8* null)
  %15 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %16 = bitcast i8* %15 to %struct.record*
  store %struct.record* %16, %struct.record** @Next_Ptr_Glob, align 8
  %17 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %18 = bitcast i8* %17 to %struct.record*
  store %struct.record* %18, %struct.record** @Ptr_Glob, align 8
  %19 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %20 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %21 = getelementptr inbounds %struct.record, %struct.record* %20, i32 0, i32 0
  store %struct.record* %19, %struct.record** %21, align 8
  %22 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %23 = getelementptr inbounds %struct.record, %struct.record* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %25 = getelementptr inbounds %struct.record, %struct.record* %24, i32 0, i32 2
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %28, i32 0, i32 2
  %30 = bitcast %union.anon* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 1
  store i32 40, i32* %31, align 4
  %32 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %33 = getelementptr inbounds %struct.record, %struct.record* %32, i32 0, i32 2
  %34 = bitcast %union.anon* %33 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 2
  %36 = getelementptr inbounds [31 x i8], [31 x i8]* %35, i32 0, i32 0
  %37 = call i8* @strcpy(i8* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %38 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %39 = call i8* @strcpy(i8* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  store i32 10, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %43 = load i32, i32* @Reg, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %51

; <label>:48:                                     ; preds = %0
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0))
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %51

; <label>:51:                                     ; preds = %48, %45
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0))
  store i32 1000000, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %10, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i32 %55)
  store i32 1, i32* %9, align 4
  br label %57

; <label>:57:                                     ; preds = %128, %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %131

; <label>:61:                                     ; preds = %57
  %62 = call i32 @Proc_5()
  %63 = call i32 @Proc_4()
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %64 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %65 = call i8* @strcpy(i8* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  %66 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %67 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %68 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @Func_2 to i32 (i8*, i8*, ...)*)(i8* %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* @Bool_Glob, align 4
  br label %72

; <label>:72:                                     ; preds = %76, %61
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %86

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %2, align 4
  %78 = mul nsw i32 5, %77
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %81, i32 %82, i32* %4)
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %2, align 4
  br label %72

; <label>:86:                                     ; preds = %72
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32*, [50 x i32]*, i32, i32, ...) bitcast (i32 (i32*, [50 x i32]*, i32, i32)* @Proc_8 to i32 (i32*, [50 x i32]*, i32, i32, ...)*)(i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i32 0, i32 0), [50 x i32]* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %87, i32 %88)
  %90 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %91 = call i32 @Proc_1(%struct.record* %90)
  store i8 65, i8* %5, align 1
  br label %92

; <label>:92:                                     ; preds = %111, %86
  %93 = load i8, i8* %5, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @Ch_2_Glob, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %94, %96
  br i1 %97, label %98, label %114

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load i8, i8* %5, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 (i32, i32, ...) bitcast (i32 (i32, i32)* @Func_1 to i32 (i32, i32, ...)*)(i32 %101, i32 67)
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %110

; <label>:104:                                    ; preds = %98
  %105 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 0, i32* %6)
  %106 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %107 = call i8* @strcpy(i8* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* @Int_Glob, align 4
  br label %110

; <label>:110:                                    ; preds = %104, %98
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i8, i8* %5, align 1
  %113 = add i8 %112, 1
  store i8 %113, i8* %5, align 1
  br label %92

; <label>:114:                                    ; preds = %92
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %2, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %121, %122
  %124 = mul nsw i32 7, %123
  %125 = load i32, i32* %2, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %3, align 4
  %127 = call i32 @Proc_2(i32* %2)
  br label %128

; <label>:128:                                    ; preds = %114
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %57

; <label>:131:                                    ; preds = %57
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0))
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %136 = load i32, i32* @Int_Glob, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 %136)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 5)
  %139 = load i32, i32* @Bool_Glob, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i32 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  %142 = load i8, i8* @Ch_1_Glob, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i32 %143)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 65)
  %146 = load i8, i8* @Ch_2_Glob, align 1
  %147 = sext i8 %146 to i32
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 %147)
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 66)
  %150 = load i32, i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i64 0, i64 8), align 16
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i32 %150)
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 7)
  %153 = load i32, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 %153)
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0))
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  %157 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %158 = getelementptr inbounds %struct.record, %struct.record* %157, i32 0, i32 0
  %159 = load %struct.record*, %struct.record** %158, align 8
  %160 = ptrtoint %struct.record* %159 to i32
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  %163 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %164 = getelementptr inbounds %struct.record, %struct.record* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i32 %165)
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 0)
  %168 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %169 = getelementptr inbounds %struct.record, %struct.record* %168, i32 0, i32 2
  %170 = bitcast %union.anon* %169 to %struct.anon*
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %172)
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 2)
  %175 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %176 = getelementptr inbounds %struct.record, %struct.record* %175, i32 0, i32 2
  %177 = bitcast %union.anon* %176 to %struct.anon*
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %179)
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 17)
  %182 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %183 = getelementptr inbounds %struct.record, %struct.record* %182, i32 0, i32 2
  %184 = bitcast %union.anon* %183 to %struct.anon*
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %184, i32 0, i32 2
  %186 = getelementptr inbounds [31 x i8], [31 x i8]* %185, i32 0, i32 0
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0))
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  %190 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %191 = getelementptr inbounds %struct.record, %struct.record* %190, i32 0, i32 0
  %192 = load %struct.record*, %struct.record** %191, align 8
  %193 = ptrtoint %struct.record* %192 to i32
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 %193)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i32 0, i32 0))
  %196 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %197 = getelementptr inbounds %struct.record, %struct.record* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i32 %198)
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 0)
  %201 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %202 = getelementptr inbounds %struct.record, %struct.record* %201, i32 0, i32 2
  %203 = bitcast %union.anon* %202 to %struct.anon*
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %205)
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  %208 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %209 = getelementptr inbounds %struct.record, %struct.record* %208, i32 0, i32 2
  %210 = bitcast %union.anon* %209 to %struct.anon*
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %212)
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 18)
  %215 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %216 = getelementptr inbounds %struct.record, %struct.record* %215, i32 0, i32 2
  %217 = bitcast %union.anon* %216 to %struct.anon*
  %218 = getelementptr inbounds %struct.anon, %struct.anon* %217, i32 0, i32 2
  %219 = getelementptr inbounds [31 x i8], [31 x i8]* %218, i32 0, i32 0
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %219)
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0))
  %222 = load i32, i32* %2, align 4
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 %222)
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 5)
  %225 = load i32, i32* %3, align 4
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %225)
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 13)
  %228 = load i32, i32* %4, align 4
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %228)
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 7)
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i32 %231)
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  %234 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i8* %234)
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0))
  %237 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* %237)
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0))
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %241 = load i64, i64* @End_Time, align 8
  %242 = load i64, i64* @Begin_Time, align 8
  %243 = sub nsw i64 %241, %242
  store i64 %243, i64* @User_Time, align 8
  %244 = load i64, i64* @User_Time, align 8
  %245 = icmp slt i64 %244, 1000
  br i1 %245, label %246, label %250

; <label>:246:                                    ; preds = %131
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0))
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %276

; <label>:250:                                    ; preds = %131
  %251 = load i64, i64* @User_Time, align 8
  %252 = sitofp i64 %251 to float
  %253 = fpext float %252 to double
  %254 = fmul double %253, 1.000000e+06
  %255 = load i32, i32* %10, align 4
  %256 = sitofp i32 %255 to float
  %257 = fmul float 5.000000e+02, %256
  %258 = fpext float %257 to double
  %259 = fdiv double %254, %258
  %260 = fptrunc double %259 to float
  store float %260, float* @Microseconds, align 4
  %261 = load i32, i32* %10, align 4
  %262 = sitofp i32 %261 to float
  %263 = fmul float 5.000000e+02, %262
  %264 = load i64, i64* @User_Time, align 8
  %265 = sitofp i64 %264 to float
  %266 = fdiv float %263, %265
  store float %266, float* @Dhrystones_Per_Second, align 4
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0))
  %268 = load float, float* @Microseconds, align 4
  %269 = fpext float %268 to double
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), double %269)
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0))
  %272 = load float, float* @Dhrystones_Per_Second, align 4
  %273 = fpext float %272 to double
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), double %273)
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %276

; <label>:276:                                    ; preds = %250, %246
  %277 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %13, i8* null)
  %278 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %279, %281
  %283 = mul nsw i64 %282, 1000
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = sub nsw i64 %285, %287
  %289 = sdiv i64 %288, 1000
  %290 = add nsw i64 %283, %289
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i64 %290)
  %292 = load i32, i32* %1, align 4
  ret i32 %292
}

declare i32 @gettimeofday(...) #1

declare i8* @malloc(...) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_5() #0 {
  %1 = alloca i32, align 4
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* @Ch_1_Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @Bool_Glob, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* @Bool_Glob, align 4
  store i8 66, i8* @Ch_2_Glob, align 1
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_1(%struct.record*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %6, align 8
  store %struct.record* %7, %struct.record** %4, align 8
  %8 = load %struct.record*, %struct.record** %3, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 0
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %12 = bitcast %struct.record* %10 to i8*
  %13 = bitcast %struct.record* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false)
  %14 = load %struct.record*, %struct.record** %3, align 8
  %15 = getelementptr inbounds %struct.record, %struct.record* %14, i32 0, i32 2
  %16 = bitcast %union.anon* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  store i32 5, i32* %17, align 4
  %18 = load %struct.record*, %struct.record** %3, align 8
  %19 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 2
  %20 = bitcast %union.anon* %19 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.record*, %struct.record** %4, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 2
  %25 = bitcast %union.anon* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.record*, %struct.record** %3, align 8
  %28 = getelementptr inbounds %struct.record, %struct.record* %27, i32 0, i32 0
  %29 = load %struct.record*, %struct.record** %28, align 8
  %30 = load %struct.record*, %struct.record** %4, align 8
  %31 = getelementptr inbounds %struct.record, %struct.record* %30, i32 0, i32 0
  store %struct.record* %29, %struct.record** %31, align 8
  %32 = load %struct.record*, %struct.record** %4, align 8
  %33 = getelementptr inbounds %struct.record, %struct.record* %32, i32 0, i32 0
  %34 = call i32 @Proc_3(%struct.record** %33)
  %35 = load %struct.record*, %struct.record** %4, align 8
  %36 = getelementptr inbounds %struct.record, %struct.record* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %69

; <label>:39:                                     ; preds = %1
  %40 = load %struct.record*, %struct.record** %4, align 8
  %41 = getelementptr inbounds %struct.record, %struct.record* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  store i32 6, i32* %43, align 4
  %44 = load %struct.record*, %struct.record** %3, align 8
  %45 = getelementptr inbounds %struct.record, %struct.record* %44, i32 0, i32 2
  %46 = bitcast %union.anon* %45 to %struct.anon*
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.record*, %struct.record** %4, align 8
  %50 = getelementptr inbounds %struct.record, %struct.record* %49, i32 0, i32 2
  %51 = bitcast %union.anon* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 %48, i32* %52)
  %54 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %55 = getelementptr inbounds %struct.record, %struct.record* %54, i32 0, i32 0
  %56 = load %struct.record*, %struct.record** %55, align 8
  %57 = load %struct.record*, %struct.record** %4, align 8
  %58 = getelementptr inbounds %struct.record, %struct.record* %57, i32 0, i32 0
  store %struct.record* %56, %struct.record** %58, align 8
  %59 = load %struct.record*, %struct.record** %4, align 8
  %60 = getelementptr inbounds %struct.record, %struct.record* %59, i32 0, i32 2
  %61 = bitcast %union.anon* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.record*, %struct.record** %4, align 8
  %65 = getelementptr inbounds %struct.record, %struct.record* %64, i32 0, i32 2
  %66 = bitcast %union.anon* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %68 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %63, i32 10, i32* %67)
  br label %76

; <label>:69:                                     ; preds = %1
  %70 = load %struct.record*, %struct.record** %3, align 8
  %71 = load %struct.record*, %struct.record** %3, align 8
  %72 = getelementptr inbounds %struct.record, %struct.record* %71, i32 0, i32 0
  %73 = load %struct.record*, %struct.record** %72, align 8
  %74 = bitcast %struct.record* %70 to i8*
  %75 = bitcast %struct.record* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 56, i32 8, i1 false)
  br label %76

; <label>:76:                                     ; preds = %69, %39
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_2(i32*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %21, %1
  %10 = load i8, i8* @Ch_1_Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @Int_Glob, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %13, %9
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_3(%struct.record**) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record**, align 8
  store %struct.record** %0, %struct.record*** %3, align 8
  %4 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %5 = icmp ne %struct.record* %4, null
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %1
  %7 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record, %struct.record* %7, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = load %struct.record**, %struct.record*** %3, align 8
  store %struct.record* %9, %struct.record** %10, align 8
  br label %11

; <label>:11:                                     ; preds = %6, %1
  %12 = load i32, i32* @Int_Glob, align 4
  %13 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %14 = getelementptr inbounds %struct.record, %struct.record* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 10, i32 %12, i32* %16)
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_6(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @Func_3(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32 3, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_3(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_7(i32, i32, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_8(i32*, [50 x i32]*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [50 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store [50 x i32]* %1, [50 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 5
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %10, align 4
  br label %36

; <label>:36:                                     ; preds = %50, %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load [50 x i32]*, [50 x i32]** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x i32], [50 x i32]* %46, i64 0, i64 %48
  store i32 %42, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %36

; <label>:53:                                     ; preds = %36
  %54 = load [50 x i32]*, [50 x i32]** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [50 x i32], [50 x i32]* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [50 x i32], [50 x i32]* %57, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load [50 x i32]*, [50 x i32]** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 20
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [50 x i32], [50 x i32]* %69, i64 %72
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [50 x i32], [50 x i32]* %73, i64 0, i64 %75
  store i32 %68, i32* %76, align 4
  store i32 5, i32* @Int_Glob, align 4
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_1(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, i8* %4, align 1
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %4, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

; <label>:18:                                     ; preds = %2
  %19 = load i8, i8* %6, align 1
  store i8 %19, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %17
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_2(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 2, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func_1(i32 %17, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %11
  store i8 65, i8* %7, align 1
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %11
  br label %8

; <label>:31:                                     ; preds = %8
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 87
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 90
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  store i32 7, i32* %6, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %35, %31
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 82
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  store i32 1, i32* %3, align 4
  br label %55

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %46, i8* %47)
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 7
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @Int_Glob, align 4
  store i32 1, i32* %3, align 4
  br label %55

; <label>:54:                                     ; preds = %45
  store i32 0, i32* %3, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %50, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
