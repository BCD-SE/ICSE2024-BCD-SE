; ModuleID = 'get_branch.bc'
source_filename = "get_branch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"a + b != 10\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"get_branch.c\00", align 1
@__PRETTY_FUNCTION__.get_branch = private unnamed_addr constant [35 x i8] c"int get_branch(int, int, int, int)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @get_branch(i32, i32, i32, i32) #0 !dbg !7 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %9, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %10, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %10, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %11, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %11, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %12, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %12, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %13, metadata !27, metadata !DIExpression()), !dbg !28
  %14 = load i32, i32* %5, align 4, !dbg !29
  %15 = icmp sgt i32 %14, 0, !dbg !31
  br i1 %15, label %16, label %17, !dbg !32

; <label>:16:                                     ; preds = %4
  store i32 0, i32* %9, align 4, !dbg !33
  br label %18, !dbg !35

; <label>:17:                                     ; preds = %4
  store i32 1, i32* %9, align 4, !dbg !36
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = load i32, i32* %6, align 4, !dbg !38
  %20 = icmp sgt i32 %19, 1, !dbg !40
  br i1 %20, label %21, label %22, !dbg !41

; <label>:21:                                     ; preds = %18
  store i32 10, i32* %10, align 4, !dbg !42
  br label %22, !dbg !44

; <label>:22:                                     ; preds = %21, %18
  %23 = load i32, i32* %7, align 4, !dbg !45
  %24 = icmp slt i32 %23, 2, !dbg !47
  br i1 %24, label %25, label %26, !dbg !48

; <label>:25:                                     ; preds = %22
  store i32 10, i32* %11, align 4, !dbg !49
  br label %26, !dbg !51

; <label>:26:                                     ; preds = %25, %22
  %27 = load i32, i32* %8, align 4, !dbg !52
  %28 = icmp sgt i32 %27, 0, !dbg !54
  br i1 %28, label %29, label %30, !dbg !55

; <label>:29:                                     ; preds = %26
  store i32 5, i32* %13, align 4, !dbg !56
  br label %30, !dbg !58

; <label>:30:                                     ; preds = %29, %26
  %31 = load i32, i32* %9, align 4, !dbg !59
  %32 = icmp eq i32 %31, 1, !dbg !61
  br i1 %32, label %33, label %40, !dbg !62

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %10, align 4, !dbg !63
  %35 = load i32, i32* %11, align 4, !dbg !63
  %36 = add nsw i32 %34, %35, !dbg !63
  %37 = icmp ne i32 %36, 10, !dbg !63
  br i1 %37, label %40, label %38, !dbg !63

; <label>:38:                                     ; preds = %33
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.get_branch, i32 0, i32 0)), !dbg !63
  br label %40, !dbg !63

; <label>:40:                                     ; preds = %38, %33, %30
  ret i32 0, !dbg !64
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %3, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %4, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %5, metadata !74, metadata !DIExpression()), !dbg !75
  %6 = bitcast i32* %2 to i8*, !dbg !76
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !77
  %7 = bitcast i32* %3 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* %7, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !79
  %8 = bitcast i32* %4 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* %8, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !81
  %9 = bitcast i32* %5 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* %9, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !83
  %10 = load i32, i32* %2, align 4, !dbg !84
  %11 = load i32, i32* %3, align 4, !dbg !85
  %12 = load i32, i32* %4, align 4, !dbg !86
  %13 = load i32, i32* %5, align 4, !dbg !87
  %14 = call i32 @get_branch(i32 %10, i32 %11, i32 %12, i32 %13), !dbg !88
  ret i32 %14, !dbg !89
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "get_branch.c", directory: "/data/BCGSE/klee/examples/get_branch")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "get_branch", scope: !1, file: !1, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!12 = !DILocation(line: 7, column: 20, scope: !7)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocation(line: 7, column: 27, scope: !7)
!15 = !DILocalVariable(name: "z", arg: 3, scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 34, scope: !7)
!17 = !DILocalVariable(name: "k", arg: 4, scope: !7, file: !1, line: 7, type: !10)
!18 = !DILocation(line: 7, column: 41, scope: !7)
!19 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 8, type: !10)
!20 = !DILocation(line: 8, column: 7, scope: !7)
!21 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 8, type: !10)
!22 = !DILocation(line: 8, column: 10, scope: !7)
!23 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 8, type: !10)
!24 = !DILocation(line: 8, column: 17, scope: !7)
!25 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 8, type: !10)
!26 = !DILocation(line: 8, column: 24, scope: !7)
!27 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 8, type: !10)
!28 = !DILocation(line: 8, column: 31, scope: !7)
!29 = !DILocation(line: 9, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 9, column: 7, scope: !30)
!32 = !DILocation(line: 9, column: 5, scope: !7)
!33 = !DILocation(line: 10, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 11)
!35 = !DILocation(line: 11, column: 2, scope: !34)
!36 = !DILocation(line: 12, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 7)
!38 = !DILocation(line: 14, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 5)
!40 = !DILocation(line: 14, column: 7, scope: !39)
!41 = !DILocation(line: 14, column: 5, scope: !7)
!42 = !DILocation(line: 15, column: 5, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 14, column: 11)
!44 = !DILocation(line: 16, column: 2, scope: !43)
!45 = !DILocation(line: 17, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !1, line: 17, column: 5)
!47 = !DILocation(line: 17, column: 7, scope: !46)
!48 = !DILocation(line: 17, column: 5, scope: !7)
!49 = !DILocation(line: 18, column: 5, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 11)
!51 = !DILocation(line: 19, column: 2, scope: !50)
!52 = !DILocation(line: 20, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 5)
!54 = !DILocation(line: 20, column: 7, scope: !53)
!55 = !DILocation(line: 20, column: 5, scope: !7)
!56 = !DILocation(line: 21, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 20, column: 11)
!58 = !DILocation(line: 22, column: 2, scope: !57)
!59 = !DILocation(line: 23, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 5)
!61 = !DILocation(line: 23, column: 7, scope: !60)
!62 = !DILocation(line: 23, column: 5, scope: !7)
!63 = !DILocation(line: 25, column: 3, scope: !60)
!64 = !DILocation(line: 26, column: 2, scope: !7)
!65 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !66, isLocal: false, isDefinition: true, scopeLine: 71, isOptimized: false, unit: !0, variables: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !DILocalVariable(name: "a", scope: !65, file: !1, line: 73, type: !10)
!69 = !DILocation(line: 73, column: 7, scope: !65)
!70 = !DILocalVariable(name: "b", scope: !65, file: !1, line: 73, type: !10)
!71 = !DILocation(line: 73, column: 10, scope: !65)
!72 = !DILocalVariable(name: "c", scope: !65, file: !1, line: 73, type: !10)
!73 = !DILocation(line: 73, column: 13, scope: !65)
!74 = !DILocalVariable(name: "d", scope: !65, file: !1, line: 73, type: !10)
!75 = !DILocation(line: 73, column: 16, scope: !65)
!76 = !DILocation(line: 74, column: 22, scope: !65)
!77 = !DILocation(line: 74, column: 3, scope: !65)
!78 = !DILocation(line: 75, column: 22, scope: !65)
!79 = !DILocation(line: 75, column: 3, scope: !65)
!80 = !DILocation(line: 76, column: 22, scope: !65)
!81 = !DILocation(line: 76, column: 3, scope: !65)
!82 = !DILocation(line: 77, column: 22, scope: !65)
!83 = !DILocation(line: 77, column: 3, scope: !65)
!84 = !DILocation(line: 78, column: 21, scope: !65)
!85 = !DILocation(line: 78, column: 24, scope: !65)
!86 = !DILocation(line: 78, column: 27, scope: !65)
!87 = !DILocation(line: 78, column: 30, scope: !65)
!88 = !DILocation(line: 78, column: 10, scope: !65)
!89 = !DILocation(line: 78, column: 3, scope: !65)
