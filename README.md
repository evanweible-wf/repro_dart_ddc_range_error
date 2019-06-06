# repro_dart_ddc_range_error

```bash
$ dart --version
Dart VM version: 2.3.2-dev.0.1 (Tue Jun 4 10:56:51 2019 +0200) on "macos_x64"

$ pub get

$ pub run build_runner build
...
[SEVERE] build_web_compilers:ddc on lib/size_collection.ddc.module:
Error compiling dartdevc module:ddc_mixin_range_error_repro|lib/size_collection.ddc.js

We're sorry, you've found a bug in our compiler.
You can report this bug at:
    https://github.com/dart-lang/sdk/issues/labels/area-dev-compiler
Please include the information below in your report, along with
any other information that may help us track it down. Thanks!
-------------------- %< --------------------
    dartdevc -k arguments: --dart-sdk-summary=/usr/local/Cellar/dart/2.3.2-dev.0.1/libexec/lib/_internal/ddc_sdk.dill --modules=amd --no-summarize -o packages/ddc_mixin_range_error_repro/size_collection.ddc.js --source-map -s packages/collection/src/utils.ddc.dill=packages/collection/src/utils -s packages/collection/src/algorithms.ddc.dill=packages/collection/src/algorithms -s packages/collection/src/iterable_zip.ddc.dill=packages/collection/src/iterable_zip -s packages/collection/src/comparators.ddc.dill=packages/collection/src/comparators -s packages/collection/src/priority_queue.ddc.dill=packages/collection/src/priority_queue -s packages/collection/src/canonicalized_map.ddc.dill=packages/collection/src/canonicalized_map -s packages/collection/collection.ddc.dill=packages/collection/collection --packages file:///var/folders/lp/11mtc2k10tb70x332n6cfgt00000gn/T/kernel_builder_o0Hlde/.packages --module-name packages/ddc_mixin_range_error_repro/size_collection --multi-root-scheme org-dartlang-app --multi-root . --track-widget-creation --inline-source-map package:ddc_mixin_range_error_repro/size_collection.dart
    dart --version: 2.3.2-dev.0.1 (Tue Jun 4 10:56:51 2019 +0200) on "macos_x64"

RangeError: Line may not be negative, was -2.
#0      new SourceLocation (package:source_span/src/location.dart:53:7)
#1      ProgramCompiler._getLocation (package:dev_compiler/src/kernel/compiler.dart:3124:14)
#2      ProgramCompiler._nodeStart (package:dev_compiler/src/kernel/compiler.dart:3092:47)
#3      ProgramCompiler._emitVariableDef (package:dev_compiler/src/kernel/compiler.dart:3779:53)
#4      MappedListIterable.elementAt (dart:_internal/iterable.dart:414:29)
#5      ListIterator.moveNext (dart:_internal/iterable.dart:343:26)
#6      new List.from (dart:core-patch/array_patch.dart:33:29)
#7      new List.of (dart:core/list.dart:140:65)
#8      ProgramCompiler._emitParameters (package:dev_compiler/src/kernel/compiler.dart:2710:16)
#9      ProgramCompiler._defineClass.emitMixinConstructors (package:dev_compiler/src/kernel/compiler.dart:726:24)
#10     ProgramCompiler._defineClass (package:dev_compiler/src/kernel/compiler.dart:807:28)
#11     ProgramCompiler._emitClassDeclaration (package:dev_compiler/src/kernel/compiler.dart:500:5)
#12     ProgramCompiler._emitClass (package:dev_compiler/src/kernel/compiler.dart:447:21)
#13     List.forEach (dart:core-patch/growable_array.dart:278:8)
#14     ProgramCompiler._emitLibrary (package:dev_compiler/src/kernel/compiler.dart:393:23)
#15     Iterable.forEach (dart:core/iterable.dart:277:30)
#16     ProgramCompiler.emitModule (package:dev_compiler/src/kernel/compiler.dart:299:15)
#17     _compile (package:dev_compiler/src/kernel/command.dart:332:27)
<asynchronous suspension>
#18     compile (package:dev_compiler/src/kernel/command.dart:42:18)
<asynchronous suspension>
#19     compile (package:dev_compiler/src/compiler/shared_command.dart:401:12)
#20     _CompilerWorker.performRequest.<anonymous closure> (file:///b/s/w/ir/cache/builder/sdk/pkg/dev_compiler/bin/dartdevc.dart:55:39)
#21     _rootRun (dart:async/zone.dart:1124:13)
#22     _CustomZone.run (dart:async/zone.dart:1021:19)
#23     _runZoned (dart:async/zone.dart:1516:10)
#24     runZoned (dart:async/zone.dart:1463:12)
#25     _CompilerWorker.performRequest (file:///b/s/w/ir/cache/builder/sdk/pkg/dev_compiler/bin/dartdevc.dart:55:24)
<asynchronous suspension>
#26     AsyncWorkerLoop.run.<anonymous closure> (package:bazel_worker/src/worker/async_worker_loop.dart:33:41)
#27     _rootRun (dart:async/zone.dart:1124:13)
#28     _CustomZone.run (dart:async/zone.dart:1021:19)
#29     _runZoned (dart:async/zone.dart:1516:10)
#30     runZoned (dart:async/zone.dart:1463:12)
#31     AsyncWorkerLoop.run (package:bazel_worker/src/worker/async_worker_loop.dart:33:26)
<asynchronous suspension>
#32     main (file:///b/s/w/ir/cache/builder/sdk/pkg/dev_compiler/bin/dartdevc.dart:28:57)
<asynchronous suspension>
#33     _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:296:32)
#34     _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:171:12)
```