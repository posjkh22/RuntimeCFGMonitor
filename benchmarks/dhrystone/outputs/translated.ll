; ModuleID = './outputs/translated.bc'
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
  call void @init_monitor()
  call void @enqueue_signature(i32 65537)
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
  br label %15

; <label>:15:                                     ; preds = %0
  call void @enqueue_signature(i32 65538)
  %16 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  br label %17

; <label>:17:                                     ; preds = %15
  call void @enqueue_signature(i32 65539)
  %18 = bitcast i8* %16 to %struct.record*
  store %struct.record* %18, %struct.record** @Next_Ptr_Glob, align 8
  %19 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  br label %20

; <label>:20:                                     ; preds = %17
  call void @enqueue_signature(i32 65540)
  %21 = bitcast i8* %19 to %struct.record*
  store %struct.record* %21, %struct.record** @Ptr_Glob, align 8
  %22 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %23 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 0
  store %struct.record* %22, %struct.record** %24, align 8
  %25 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %26 = getelementptr inbounds %struct.record, %struct.record* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %28 = getelementptr inbounds %struct.record, %struct.record* %27, i32 0, i32 2
  %29 = bitcast %union.anon* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  %31 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 2
  %33 = bitcast %union.anon* %32 to %struct.anon*
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  store i32 40, i32* %34, align 4
  %35 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %36 = getelementptr inbounds %struct.record, %struct.record* %35, i32 0, i32 2
  %37 = bitcast %union.anon* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 2
  %39 = getelementptr inbounds [31 x i8], [31 x i8]* %38, i32 0, i32 0
  %40 = call i8* @strcpy(i8* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  br label %41

; <label>:41:                                     ; preds = %20
  call void @enqueue_signature(i32 65541)
  %42 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %44

; <label>:44:                                     ; preds = %41
  call void @enqueue_signature(i32 65542)
  store i32 10, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %44
  call void @enqueue_signature(i32 65543)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %48

; <label>:48:                                     ; preds = %46
  call void @enqueue_signature(i32 65544)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %50

; <label>:50:                                     ; preds = %48
  call void @enqueue_signature(i32 65545)
  %51 = load i32, i32* @Reg, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %50
  call void @enqueue_signature(i32 65546)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  br label %55

; <label>:55:                                     ; preds = %53
  call void @enqueue_signature(i32 65547)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %61

; <label>:57:                                     ; preds = %50
  call void @enqueue_signature(i32 65548)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %57
  call void @enqueue_signature(i32 65549)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %59, %55
  call void @enqueue_signature(i32 65550)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0))
  br label %63

; <label>:63:                                     ; preds = %61
  call void @enqueue_signature(i32 65551)
  store i32 1000000, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %10, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %66

; <label>:66:                                     ; preds = %63
  call void @enqueue_signature(i32 65552)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i32 %67)
  br label %69

; <label>:69:                                     ; preds = %66
  call void @enqueue_signature(i32 65553)
  store i32 1, i32* %9, align 4
  br label %70

; <label>:70:                                     ; preds = %151, %69
  call void @enqueue_signature(i32 65554)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %154

; <label>:74:                                     ; preds = %70
  call void @enqueue_signature(i32 65555)
  %75 = call i32 @Proc_5()
  br label %76

; <label>:76:                                     ; preds = %74
  call void @enqueue_signature(i32 65556)
  %77 = call i32 @Proc_4()
  br label %78

; <label>:78:                                     ; preds = %76
  call void @enqueue_signature(i32 65557)
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %79 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %80 = call i8* @strcpy(i8* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %81

; <label>:81:                                     ; preds = %78
  call void @enqueue_signature(i32 65558)
  store i32 1, i32* %6, align 4
  %82 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %83 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %84 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @Func_2 to i32 (i8*, i8*, ...)*)(i8* %82, i8* %83)
  br label %85

; <label>:85:                                     ; preds = %81
  call void @enqueue_signature(i32 65559)
  %86 = icmp ne i32 %84, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* @Bool_Glob, align 4
  br label %89

; <label>:89:                                     ; preds = %101, %85
  call void @enqueue_signature(i32 65560)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

; <label>:93:                                     ; preds = %89
  call void @enqueue_signature(i32 65561)
  %94 = load i32, i32* %2, align 4
  %95 = mul nsw i32 5, %94
  %96 = load i32, i32* %3, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %98, i32 %99, i32* %4)
  br label %101

; <label>:101:                                    ; preds = %93
  call void @enqueue_signature(i32 65562)
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %89

; <label>:104:                                    ; preds = %89
  call void @enqueue_signature(i32 65563)
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i32*, [50 x i32]*, i32, i32, ...) bitcast (i32 (i32*, [50 x i32]*, i32, i32)* @Proc_8 to i32 (i32*, [50 x i32]*, i32, i32, ...)*)(i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i32 0, i32 0), [50 x i32]* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %105, i32 %106)
  br label %108

; <label>:108:                                    ; preds = %104
  call void @enqueue_signature(i32 65564)
  %109 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %110 = call i32 @Proc_1(%struct.record* %109)
  br label %111

; <label>:111:                                    ; preds = %108
  call void @enqueue_signature(i32 65565)
  store i8 65, i8* %5, align 1
  br label %112

; <label>:112:                                    ; preds = %134, %111
  call void @enqueue_signature(i32 65566)
  %113 = load i8, i8* %5, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* @Ch_2_Glob, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %118, label %137

; <label>:118:                                    ; preds = %112
  call void @enqueue_signature(i32 65567)
  %119 = load i32, i32* %6, align 4
  %120 = load i8, i8* %5, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i32, i32, ...) bitcast (i32 (i32, i32)* @Func_1 to i32 (i32, i32, ...)*)(i32 %121, i32 67)
  br label %123

; <label>:123:                                    ; preds = %118
  call void @enqueue_signature(i32 65568)
  %124 = icmp eq i32 %119, %122
  br i1 %124, label %125, label %133

; <label>:125:                                    ; preds = %123
  call void @enqueue_signature(i32 65569)
  %126 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 0, i32* %6)
  br label %127

; <label>:127:                                    ; preds = %125
  call void @enqueue_signature(i32 65570)
  %128 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %129 = call i8* @strcpy(i8* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  br label %130

; <label>:130:                                    ; preds = %127
  call void @enqueue_signature(i32 65571)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* @Int_Glob, align 4
  br label %133

; <label>:133:                                    ; preds = %130, %123
  call void @enqueue_signature(i32 65572)
  br label %134

; <label>:134:                                    ; preds = %133
  call void @enqueue_signature(i32 65573)
  %135 = load i8, i8* %5, align 1
  %136 = add i8 %135, 1
  store i8 %136, i8* %5, align 1
  br label %112

; <label>:137:                                    ; preds = %112
  call void @enqueue_signature(i32 65574)
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %2, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %2, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %4, align 4
  %146 = sub nsw i32 %144, %145
  %147 = mul nsw i32 7, %146
  %148 = load i32, i32* %2, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %3, align 4
  %150 = call i32 @Proc_2(i32* %2)
  br label %151

; <label>:151:                                    ; preds = %137
  call void @enqueue_signature(i32 65575)
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %70

; <label>:154:                                    ; preds = %70
  call void @enqueue_signature(i32 65576)
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  br label %156

; <label>:156:                                    ; preds = %154
  call void @enqueue_signature(i32 65577)
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %158

; <label>:158:                                    ; preds = %156
  call void @enqueue_signature(i32 65578)
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0))
  br label %160

; <label>:160:                                    ; preds = %158
  call void @enqueue_signature(i32 65579)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %162

; <label>:162:                                    ; preds = %160
  call void @enqueue_signature(i32 65580)
  %163 = load i32, i32* @Int_Glob, align 4
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 %163)
  br label %165

; <label>:165:                                    ; preds = %162
  call void @enqueue_signature(i32 65581)
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 5)
  br label %167

; <label>:167:                                    ; preds = %165
  call void @enqueue_signature(i32 65582)
  %168 = load i32, i32* @Bool_Glob, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i32 %168)
  br label %170

; <label>:170:                                    ; preds = %167
  call void @enqueue_signature(i32 65583)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  br label %172

; <label>:172:                                    ; preds = %170
  call void @enqueue_signature(i32 65584)
  %173 = load i8, i8* @Ch_1_Glob, align 1
  %174 = sext i8 %173 to i32
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i32 %174)
  br label %176

; <label>:176:                                    ; preds = %172
  call void @enqueue_signature(i32 65585)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 65)
  br label %178

; <label>:178:                                    ; preds = %176
  call void @enqueue_signature(i32 65586)
  %179 = load i8, i8* @Ch_2_Glob, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 %180)
  br label %182

; <label>:182:                                    ; preds = %178
  call void @enqueue_signature(i32 65587)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 66)
  br label %184

; <label>:184:                                    ; preds = %182
  call void @enqueue_signature(i32 65588)
  %185 = load i32, i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i64 0, i64 8), align 16
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i32 %185)
  br label %187

; <label>:187:                                    ; preds = %184
  call void @enqueue_signature(i32 65589)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 7)
  br label %189

; <label>:189:                                    ; preds = %187
  call void @enqueue_signature(i32 65590)
  %190 = load i32, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 %190)
  br label %192

; <label>:192:                                    ; preds = %189
  call void @enqueue_signature(i32 65591)
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0))
  br label %194

; <label>:194:                                    ; preds = %192
  call void @enqueue_signature(i32 65592)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  br label %196

; <label>:196:                                    ; preds = %194
  call void @enqueue_signature(i32 65593)
  %197 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %198 = getelementptr inbounds %struct.record, %struct.record* %197, i32 0, i32 0
  %199 = load %struct.record*, %struct.record** %198, align 8
  %200 = ptrtoint %struct.record* %199 to i32
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 %200)
  br label %202

; <label>:202:                                    ; preds = %196
  call void @enqueue_signature(i32 65594)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  br label %204

; <label>:204:                                    ; preds = %202
  call void @enqueue_signature(i32 65595)
  %205 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %206 = getelementptr inbounds %struct.record, %struct.record* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209:                                    ; preds = %204
  call void @enqueue_signature(i32 65596)
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 0)
  br label %211

; <label>:211:                                    ; preds = %209
  call void @enqueue_signature(i32 65597)
  %212 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %213 = getelementptr inbounds %struct.record, %struct.record* %212, i32 0, i32 2
  %214 = bitcast %union.anon* %213 to %struct.anon*
  %215 = getelementptr inbounds %struct.anon, %struct.anon* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %216)
  br label %218

; <label>:218:                                    ; preds = %211
  call void @enqueue_signature(i32 65598)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 2)
  br label %220

; <label>:220:                                    ; preds = %218
  call void @enqueue_signature(i32 65599)
  %221 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %222 = getelementptr inbounds %struct.record, %struct.record* %221, i32 0, i32 2
  %223 = bitcast %union.anon* %222 to %struct.anon*
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %225)
  br label %227

; <label>:227:                                    ; preds = %220
  call void @enqueue_signature(i32 65600)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 17)
  br label %229

; <label>:229:                                    ; preds = %227
  call void @enqueue_signature(i32 65601)
  %230 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %231 = getelementptr inbounds %struct.record, %struct.record* %230, i32 0, i32 2
  %232 = bitcast %union.anon* %231 to %struct.anon*
  %233 = getelementptr inbounds %struct.anon, %struct.anon* %232, i32 0, i32 2
  %234 = getelementptr inbounds [31 x i8], [31 x i8]* %233, i32 0, i32 0
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %234)
  br label %236

; <label>:236:                                    ; preds = %229
  call void @enqueue_signature(i32 65602)
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0))
  br label %238

; <label>:238:                                    ; preds = %236
  call void @enqueue_signature(i32 65603)
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  br label %240

; <label>:240:                                    ; preds = %238
  call void @enqueue_signature(i32 65604)
  %241 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %242 = getelementptr inbounds %struct.record, %struct.record* %241, i32 0, i32 0
  %243 = load %struct.record*, %struct.record** %242, align 8
  %244 = ptrtoint %struct.record* %243 to i32
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 %244)
  br label %246

; <label>:246:                                    ; preds = %240
  call void @enqueue_signature(i32 65605)
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i32 0, i32 0))
  br label %248

; <label>:248:                                    ; preds = %246
  call void @enqueue_signature(i32 65606)
  %249 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %250 = getelementptr inbounds %struct.record, %struct.record* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i32 %251)
  br label %253

; <label>:253:                                    ; preds = %248
  call void @enqueue_signature(i32 65607)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 0)
  br label %255

; <label>:255:                                    ; preds = %253
  call void @enqueue_signature(i32 65608)
  %256 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %257 = getelementptr inbounds %struct.record, %struct.record* %256, i32 0, i32 2
  %258 = bitcast %union.anon* %257 to %struct.anon*
  %259 = getelementptr inbounds %struct.anon, %struct.anon* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %260)
  br label %262

; <label>:262:                                    ; preds = %255
  call void @enqueue_signature(i32 65609)
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  br label %264

; <label>:264:                                    ; preds = %262
  call void @enqueue_signature(i32 65610)
  %265 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %266 = getelementptr inbounds %struct.record, %struct.record* %265, i32 0, i32 2
  %267 = bitcast %union.anon* %266 to %struct.anon*
  %268 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %269)
  br label %271

; <label>:271:                                    ; preds = %264
  call void @enqueue_signature(i32 65611)
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 18)
  br label %273

; <label>:273:                                    ; preds = %271
  call void @enqueue_signature(i32 65612)
  %274 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %275 = getelementptr inbounds %struct.record, %struct.record* %274, i32 0, i32 2
  %276 = bitcast %union.anon* %275 to %struct.anon*
  %277 = getelementptr inbounds %struct.anon, %struct.anon* %276, i32 0, i32 2
  %278 = getelementptr inbounds [31 x i8], [31 x i8]* %277, i32 0, i32 0
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %278)
  br label %280

; <label>:280:                                    ; preds = %273
  call void @enqueue_signature(i32 65613)
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0))
  br label %282

; <label>:282:                                    ; preds = %280
  call void @enqueue_signature(i32 65614)
  %283 = load i32, i32* %2, align 4
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 %283)
  br label %285

; <label>:285:                                    ; preds = %282
  call void @enqueue_signature(i32 65615)
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 5)
  br label %287

; <label>:287:                                    ; preds = %285
  call void @enqueue_signature(i32 65616)
  %288 = load i32, i32* %3, align 4
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %288)
  br label %290

; <label>:290:                                    ; preds = %287
  call void @enqueue_signature(i32 65617)
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 13)
  br label %292

; <label>:292:                                    ; preds = %290
  call void @enqueue_signature(i32 65618)
  %293 = load i32, i32* %4, align 4
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %293)
  br label %295

; <label>:295:                                    ; preds = %292
  call void @enqueue_signature(i32 65619)
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 7)
  br label %297

; <label>:297:                                    ; preds = %295
  call void @enqueue_signature(i32 65620)
  %298 = load i32, i32* %6, align 4
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i32 %298)
  br label %300

; <label>:300:                                    ; preds = %297
  call void @enqueue_signature(i32 65621)
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 1)
  br label %302

; <label>:302:                                    ; preds = %300
  call void @enqueue_signature(i32 65622)
  %303 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i8* %303)
  br label %305

; <label>:305:                                    ; preds = %302
  call void @enqueue_signature(i32 65623)
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0))
  br label %307

; <label>:307:                                    ; preds = %305
  call void @enqueue_signature(i32 65624)
  %308 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* %308)
  br label %310

; <label>:310:                                    ; preds = %307
  call void @enqueue_signature(i32 65625)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0))
  br label %312

; <label>:312:                                    ; preds = %310
  call void @enqueue_signature(i32 65626)
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %314

; <label>:314:                                    ; preds = %312
  call void @enqueue_signature(i32 65627)
  %315 = load i64, i64* @End_Time, align 8
  %316 = load i64, i64* @Begin_Time, align 8
  %317 = sub nsw i64 %315, %316
  store i64 %317, i64* @User_Time, align 8
  %318 = load i64, i64* @User_Time, align 8
  %319 = icmp slt i64 %318, 1000
  br i1 %319, label %320, label %326

; <label>:320:                                    ; preds = %314
  call void @enqueue_signature(i32 65628)
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0))
  br label %322

; <label>:322:                                    ; preds = %320
  call void @enqueue_signature(i32 65629)
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  br label %324

; <label>:324:                                    ; preds = %322
  call void @enqueue_signature(i32 65630)
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %356

; <label>:326:                                    ; preds = %314
  call void @enqueue_signature(i32 65631)
  %327 = load i64, i64* @User_Time, align 8
  %328 = sitofp i64 %327 to float
  %329 = fpext float %328 to double
  %330 = fmul double %329, 1.000000e+06
  %331 = load i32, i32* %10, align 4
  %332 = sitofp i32 %331 to float
  %333 = fmul float 5.000000e+02, %332
  %334 = fpext float %333 to double
  %335 = fdiv double %330, %334
  %336 = fptrunc double %335 to float
  store float %336, float* @Microseconds, align 4
  %337 = load i32, i32* %10, align 4
  %338 = sitofp i32 %337 to float
  %339 = fmul float 5.000000e+02, %338
  %340 = load i64, i64* @User_Time, align 8
  %341 = sitofp i64 %340 to float
  %342 = fdiv float %339, %341
  store float %342, float* @Dhrystones_Per_Second, align 4
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0))
  br label %344

; <label>:344:                                    ; preds = %326
  call void @enqueue_signature(i32 65632)
  %345 = load float, float* @Microseconds, align 4
  %346 = fpext float %345 to double
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), double %346)
  br label %348

; <label>:348:                                    ; preds = %344
  call void @enqueue_signature(i32 65633)
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0))
  br label %350

; <label>:350:                                    ; preds = %348
  call void @enqueue_signature(i32 65634)
  %351 = load float, float* @Dhrystones_Per_Second, align 4
  %352 = fpext float %351 to double
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), double %352)
  br label %354

; <label>:354:                                    ; preds = %350
  call void @enqueue_signature(i32 65635)
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %356

; <label>:356:                                    ; preds = %354, %324
  call void @enqueue_signature(i32 65636)
  %357 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %13, i8* null)
  br label %358

; <label>:358:                                    ; preds = %356
  call void @enqueue_signature(i32 65637)
  %359 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = sub nsw i64 %360, %362
  %364 = mul nsw i64 %363, 1000
  %365 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = sub nsw i64 %366, %368
  %370 = sdiv i64 %369, 1000
  %371 = add nsw i64 %364, %370
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i64 %371)
  br label %373

; <label>:373:                                    ; preds = %358
  call void @enqueue_signature(i32 65638)
  %374 = load i32, i32* %1, align 4
  ret i32 %374
}

declare i32 @gettimeofday(...) #1

declare i8* @malloc(...) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_5() #0 {
  call void @enqueue_signature(i32 393217)
  %1 = alloca i32, align 4
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_4() #0 {
  call void @enqueue_signature(i32 458753)
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
  call void @enqueue_signature(i32 524289)
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
  br label %14

; <label>:14:                                     ; preds = %1
  call void @enqueue_signature(i32 524290)
  %15 = load %struct.record*, %struct.record** %3, align 8
  %16 = getelementptr inbounds %struct.record, %struct.record* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  store i32 5, i32* %18, align 4
  %19 = load %struct.record*, %struct.record** %3, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.record*, %struct.record** %4, align 8
  %25 = getelementptr inbounds %struct.record, %struct.record* %24, i32 0, i32 2
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.record*, %struct.record** %3, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %28, i32 0, i32 0
  %30 = load %struct.record*, %struct.record** %29, align 8
  %31 = load %struct.record*, %struct.record** %4, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 0
  store %struct.record* %30, %struct.record** %32, align 8
  %33 = load %struct.record*, %struct.record** %4, align 8
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 0
  %35 = call i32 @Proc_3(%struct.record** %34)
  br label %36

; <label>:36:                                     ; preds = %14
  call void @enqueue_signature(i32 524291)
  %37 = load %struct.record*, %struct.record** %4, align 8
  %38 = getelementptr inbounds %struct.record, %struct.record* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %72

; <label>:41:                                     ; preds = %36
  call void @enqueue_signature(i32 524292)
  %42 = load %struct.record*, %struct.record** %4, align 8
  %43 = getelementptr inbounds %struct.record, %struct.record* %42, i32 0, i32 2
  %44 = bitcast %union.anon* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 1
  store i32 6, i32* %45, align 4
  %46 = load %struct.record*, %struct.record** %3, align 8
  %47 = getelementptr inbounds %struct.record, %struct.record* %46, i32 0, i32 2
  %48 = bitcast %union.anon* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.record*, %struct.record** %4, align 8
  %52 = getelementptr inbounds %struct.record, %struct.record* %51, i32 0, i32 2
  %53 = bitcast %union.anon* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 %50, i32* %54)
  br label %56

; <label>:56:                                     ; preds = %41
  call void @enqueue_signature(i32 524293)
  %57 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %58 = getelementptr inbounds %struct.record, %struct.record* %57, i32 0, i32 0
  %59 = load %struct.record*, %struct.record** %58, align 8
  %60 = load %struct.record*, %struct.record** %4, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 0
  store %struct.record* %59, %struct.record** %61, align 8
  %62 = load %struct.record*, %struct.record** %4, align 8
  %63 = getelementptr inbounds %struct.record, %struct.record* %62, i32 0, i32 2
  %64 = bitcast %union.anon* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.record*, %struct.record** %4, align 8
  %68 = getelementptr inbounds %struct.record, %struct.record* %67, i32 0, i32 2
  %69 = bitcast %union.anon* %68 to %struct.anon*
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 1
  %71 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %66, i32 10, i32* %70)
  br label %79

; <label>:72:                                     ; preds = %36
  call void @enqueue_signature(i32 524294)
  %73 = load %struct.record*, %struct.record** %3, align 8
  %74 = load %struct.record*, %struct.record** %3, align 8
  %75 = getelementptr inbounds %struct.record, %struct.record* %74, i32 0, i32 0
  %76 = load %struct.record*, %struct.record** %75, align 8
  %77 = bitcast %struct.record* %73 to i8*
  %78 = bitcast %struct.record* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 56, i32 8, i1 false)
  br label %79

; <label>:79:                                     ; preds = %72, %56
  call void @enqueue_signature(i32 524295)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_2(i32*) #0 {
  call void @enqueue_signature(i32 589825)
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
  call void @enqueue_signature(i32 589826)
  %10 = load i8, i8* @Ch_1_Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  call void @enqueue_signature(i32 589827)
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
  call void @enqueue_signature(i32 589828)
  br label %21

; <label>:21:                                     ; preds = %20
  call void @enqueue_signature(i32 589829)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %21
  call void @enqueue_signature(i32 589830)
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_3(%struct.record**) #0 {
  call void @enqueue_signature(i32 720897)
  %2 = alloca i32, align 4
  %3 = alloca %struct.record**, align 8
  store %struct.record** %0, %struct.record*** %3, align 8
  %4 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %5 = icmp ne %struct.record* %4, null
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %1
  call void @enqueue_signature(i32 720898)
  %7 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record, %struct.record* %7, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = load %struct.record**, %struct.record*** %3, align 8
  store %struct.record* %9, %struct.record** %10, align 8
  br label %11

; <label>:11:                                     ; preds = %6, %1
  call void @enqueue_signature(i32 720899)
  %12 = load i32, i32* @Int_Glob, align 4
  %13 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %14 = getelementptr inbounds %struct.record, %struct.record* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 10, i32 %12, i32* %16)
  br label %18

; <label>:18:                                     ; preds = %11
  call void @enqueue_signature(i32 720900)
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_6(i32, i32*) #0 {
  call void @enqueue_signature(i32 786433)
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
  br label %10

; <label>:10:                                     ; preds = %2
  call void @enqueue_signature(i32 786434)
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %10
  call void @enqueue_signature(i32 786435)
  %13 = load i32*, i32** %5, align 8
  store i32 3, i32* %13, align 4
  br label %14

; <label>:14:                                     ; preds = %12, %10
  call void @enqueue_signature(i32 786436)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_3(i32) #0 {
  call void @enqueue_signature(i32 851969)
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
  call void @enqueue_signature(i32 851970)
  store i32 1, i32* %2, align 4
  br label %10

; <label>:9:                                      ; preds = %1
  call void @enqueue_signature(i32 851971)
  store i32 0, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  call void @enqueue_signature(i32 851972)
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_7(i32, i32, i32*) #0 {
  call void @enqueue_signature(i32 917505)
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
  call void @enqueue_signature(i32 983041)
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
  call void @enqueue_signature(i32 983042)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %36
  call void @enqueue_signature(i32 983043)
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
  call void @enqueue_signature(i32 983044)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %36

; <label>:53:                                     ; preds = %36
  call void @enqueue_signature(i32 983045)
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
  call void @enqueue_signature(i32 1048577)
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
  call void @enqueue_signature(i32 1048578)
  store i32 0, i32* %3, align 4
  br label %20

; <label>:18:                                     ; preds = %2
  call void @enqueue_signature(i32 1048579)
  %19 = load i8, i8* %6, align 1
  store i8 %19, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %17
  call void @enqueue_signature(i32 1048580)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_2(i8*, i8*) #0 {
  call void @enqueue_signature(i32 1114113)
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 2, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %31, %2
  call void @enqueue_signature(i32 1114114)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %32

; <label>:11:                                     ; preds = %8
  call void @enqueue_signature(i32 1114115)
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
  br label %26

; <label>:26:                                     ; preds = %11
  call void @enqueue_signature(i32 1114116)
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %26
  call void @enqueue_signature(i32 1114117)
  store i8 65, i8* %7, align 1
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

; <label>:31:                                     ; preds = %28, %26
  call void @enqueue_signature(i32 1114118)
  br label %8

; <label>:32:                                     ; preds = %8
  call void @enqueue_signature(i32 1114119)
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 87
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %32
  call void @enqueue_signature(i32 1114120)
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp slt i32 %38, 90
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %36
  call void @enqueue_signature(i32 1114121)
  store i32 7, i32* %6, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %36, %32
  call void @enqueue_signature(i32 1114122)
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 82
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  call void @enqueue_signature(i32 1114123)
  store i32 1, i32* %3, align 4
  br label %57

; <label>:46:                                     ; preds = %41
  call void @enqueue_signature(i32 1114124)
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  br label %50

; <label>:50:                                     ; preds = %46
  call void @enqueue_signature(i32 1114125)
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %50
  call void @enqueue_signature(i32 1114126)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 7
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* @Int_Glob, align 4
  store i32 1, i32* %3, align 4
  br label %57

; <label>:56:                                     ; preds = %50
  call void @enqueue_signature(i32 1114127)
  store i32 0, i32* %3, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %52, %45
  call void @enqueue_signature(i32 1114128)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare i32 @strcmp(i8*, i8*) #1

declare void @init_monitor()

declare void @enqueue_signature(i32)

define void @CallcheckerSet() {
entry:
  call void @init_monitor()
  call void @enqueue_signature(i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
