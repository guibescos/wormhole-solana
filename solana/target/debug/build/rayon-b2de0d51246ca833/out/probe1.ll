; ModuleID = 'probe1.98c39414-cgu.0'
source_filename = "probe1.98c39414-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>" = type { %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" }
%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" = type { { i32, i32 }, i64, i8, [7 x i8] }

@alloc_ccc1526471232d90de3ba83efc427eb2 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc_38f9b214bd24b4bf052a4648789bdbb6 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/84c898d65adf2f39a5a98507f1fe0ce10a2b8dbc/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc_f39358f051d25edddb85848999aca1bf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_38f9b214bd24b4bf052a4648789bdbb6, [16 x i8] c"Y\00\00\00\00\00\00\00\15\00\00\00\09\00\00\00" }>, align 8

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3rev17h763bf1daffceeb1fE(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, ptr %self) unnamed_addr #0 {
start:
; call core::iter::adapters::rev::Rev<T>::new
  call void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h3ee1dce42b0c92bcE"(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, ptr %self)
  ret void
}

; core::iter::traits::iterator::Iterator::step_by
; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17h6bd0207502404d0eE(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %self.0, i32 %self.1, i64 %step) unnamed_addr #0 {
start:
; call core::iter::adapters::step_by::StepBy<I>::new
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h0eb30ac4c66f62edE"(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %self.0, i32 %self.1, i64 %step)
  ret void
}

; core::iter::adapters::rev::Rev<T>::new
; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h3ee1dce42b0c92bcE"(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, ptr %iter) unnamed_addr #1 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %iter, i64 24, i1 false)
  ret void
}

; core::iter::adapters::step_by::StepBy<I>::new
; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h0eb30ac4c66f62edE"(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %iter.0, i32 %iter.1, i64 %step) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_4 = icmp ne i64 %step, 0
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = sub i64 %step, 1
  %2 = getelementptr inbounds { i32, i32 }, ptr %0, i32 0, i32 0
  store i32 %iter.0, ptr %2, align 8
  %3 = getelementptr inbounds { i32, i32 }, ptr %0, i32 0, i32 1
  store i32 %iter.1, ptr %3, align 4
  %4 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", ptr %0, i32 0, i32 1
  store i64 %_7, ptr %4, align 8
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", ptr %0, i32 0, i32 2
  store i8 1, ptr %5, align 8
  ret void

bb1:                                              ; preds = %start
; invoke core::panicking::panic
  invoke void @_ZN4core9panicking5panic17h2f410888133670e4E(ptr align 1 @alloc_ccc1526471232d90de3ba83efc427eb2, i64 27, ptr align 8 @alloc_f39358f051d25edddb85848999aca1bf) #4
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %6 = load ptr, ptr %1, align 8, !noundef !1
  %7 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8, !noundef !1
  %9 = insertvalue { ptr, i32 } undef, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

cleanup:                                          ; preds = %bb1
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %13, ptr %15, align 8
  br label %bb3

unreachable:                                      ; preds = %bb1
  unreachable
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h8ec139a6c12e9110E() unnamed_addr #1 {
start:
  %_3 = alloca { i32, i32 }, align 4
  %_2 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", align 8
  %_1 = alloca %"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>", align 8
  store i32 0, ptr %_3, align 4
  %0 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 1
  store i32 10, ptr %0, align 4
  %1 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 0
  %2 = load i32, ptr %1, align 4, !noundef !1
  %3 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 1
  %4 = load i32, ptr %3, align 4, !noundef !1
; call core::iter::traits::iterator::Iterator::step_by
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h6bd0207502404d0eE(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %_2, i32 %2, i32 %4, i64 2)
; call core::iter::traits::iterator::Iterator::rev
  call void @_ZN4core4iter6traits8iterator8Iterator3rev17h763bf1daffceeb1fE(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %_1, ptr %_2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h2f410888133670e4E(ptr align 1, i64, ptr align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
