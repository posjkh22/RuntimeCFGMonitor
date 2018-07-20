; ModuleID = './outputs/translated.bc'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_3() #0 {
  call void @enqueue_signature(i32 65537)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_2() #0 {
  call void @enqueue_signature(i32 131073)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_1() #0 {
  call void @enqueue_signature(i32 196609)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_2() #0 {
  call void @enqueue_signature(i32 262145)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_1() #0 {
  call void @enqueue_signature(i32 327681)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func3_1() #0 {
  call void @enqueue_signature(i32 393217)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_4() #0 {
  call void @enqueue_signature(i32 458753)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_3() #0 {
  call void @enqueue_signature(i32 524289)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_2() #0 {
  call void @enqueue_signature(i32 589825)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_1() #0 {
  call void @enqueue_signature(i32 655361)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_1() #0 {
  call void @enqueue_signature(i32 720897)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_2() #0 {
  call void @enqueue_signature(i32 786433)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_3() #0 {
  call void @enqueue_signature(i32 851969)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_4() #0 {
  call void @enqueue_signature(i32 917505)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_5() #0 {
  call void @enqueue_signature(i32 983041)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func6_1() #0 {
  call void @enqueue_signature(i32 1048577)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func1() #0 {
  call void @enqueue_signature(i32 1114113)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func1_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1114114)
  %4 = call i32 @sub_func1_2()
  br label %5

; <label>:5:                                      ; preds = %3
  call void @enqueue_signature(i32 1114115)
  %6 = call i32 @sub_func1_3()
  br label %7

; <label>:7:                                      ; preds = %5
  call void @enqueue_signature(i32 1114116)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func2() #0 {
  call void @enqueue_signature(i32 1179649)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func2_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1179650)
  %4 = call i32 @sub_func2_2()
  br label %5

; <label>:5:                                      ; preds = %3
  call void @enqueue_signature(i32 1179651)
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func3() #0 {
  call void @enqueue_signature(i32 1245185)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func3_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1245186)
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func4() #0 {
  call void @enqueue_signature(i32 1310721)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func4_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1310722)
  %4 = call i32 @sub_func4_2()
  br label %5

; <label>:5:                                      ; preds = %3
  call void @enqueue_signature(i32 1310723)
  %6 = call i32 @sub_func4_3()
  br label %7

; <label>:7:                                      ; preds = %5
  call void @enqueue_signature(i32 1310724)
  %8 = call i32 @sub_func4_4()
  br label %9

; <label>:9:                                      ; preds = %7
  call void @enqueue_signature(i32 1310725)
  ret i32 4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func5() #0 {
  call void @enqueue_signature(i32 1376257)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func5_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1376258)
  %4 = call i32 @sub_func5_2()
  br label %5

; <label>:5:                                      ; preds = %3
  call void @enqueue_signature(i32 1376259)
  %6 = call i32 @sub_func5_3()
  br label %7

; <label>:7:                                      ; preds = %5
  call void @enqueue_signature(i32 1376260)
  %8 = call i32 @sub_func5_4()
  br label %9

; <label>:9:                                      ; preds = %7
  call void @enqueue_signature(i32 1376261)
  %10 = call i32 @sub_func5_5()
  br label %11

; <label>:11:                                     ; preds = %9
  call void @enqueue_signature(i32 1376262)
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func6() #0 {
  call void @enqueue_signature(i32 1441793)
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func6_1()
  br label %3

; <label>:3:                                      ; preds = %0
  call void @enqueue_signature(i32 1441794)
  ret i32 6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  call void @init_monitor()
  call void @enqueue_signature(i32 1507329)
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #3
  br label %7

; <label>:7:                                      ; preds = %0
  call void @enqueue_signature(i32 1507330)
  store i32 0, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %7
  call void @enqueue_signature(i32 1507331)
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %8
  call void @enqueue_signature(i32 1507332)
  store i32 3, i32* %5, align 4
  %12 = call i32 @func1()
  br label %13

; <label>:13:                                     ; preds = %11
  call void @enqueue_signature(i32 1507333)
  %14 = call i32 @func2()
  br label %15

; <label>:15:                                     ; preds = %13
  call void @enqueue_signature(i32 1507334)
  %16 = call i32 @func3()
  br label %17

; <label>:17:                                     ; preds = %15
  call void @enqueue_signature(i32 1507335)
  %18 = call i32 @func4()
  br label %19

; <label>:19:                                     ; preds = %17
  call void @enqueue_signature(i32 1507336)
  %20 = call i32 @func5()
  br label %21

; <label>:21:                                     ; preds = %19
  call void @enqueue_signature(i32 1507337)
  %22 = call i32 @func6()
  br label %23

; <label>:23:                                     ; preds = %21
  call void @enqueue_signature(i32 1507338)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

; <label>:26:                                     ; preds = %8
  call void @enqueue_signature(i32 1507339)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %26
  call void @enqueue_signature(i32 1507340)
  %29 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  br label %30

; <label>:30:                                     ; preds = %28
  call void @enqueue_signature(i32 1507341)
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = mul nsw i64 %35, 1000
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = sdiv i64 %41, 1000
  %43 = add nsw i64 %36, %42
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %43)
  br label %45

; <label>:45:                                     ; preds = %30
  call void @enqueue_signature(i32 1507342)
  store i32 1, i32* @is_signature_queue_full, align 4
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @printf(i8*, ...) #2

declare void @init_monitor()

declare void @enqueue_signature(i32)

define void @CallcheckerSet() {
entry:
  call void @init_monitor()
  call void @enqueue_signature(i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
