// Ensure that the build script itself is not opted in to null safety,
// instead of taking the language version from the current package.
//
// @dart=2.9
//
// ignore_for_file: directives_ordering

import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:karee_injectable_gen/karee_injectable_gen.dart' as _i2;
import 'package:reflectable/reflectable_builder.dart' as _i3;
import 'package:build_config/build_config.dart' as _i4;
import 'package:source_gen/builder.dart' as _i5;
import 'dart:isolate' as _i6;
import 'package:build_runner/build_runner.dart' as _i7;
import 'dart:io' as _i8;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(r'karee_injectable_gen:autowiredBuilder', [_i2.autowiredBuilder],
      _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'karee_injectable_gen:controllerBuilder', [_i2.controllerBuilder],
      _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'karee_injectable_gen:persistableBuilder',
      [_i2.persistableBuilder], _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'karee_injectable_gen:screen_tracker', [_i2.screenBuilder],
      _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'karee_injectable_gen:serviceBuilder', [_i2.serviceBuilder],
      _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'karee_injectable_gen:valueBuilder', [_i2.valueBuilder],
      _i1.toDependentsOf(r'karee_injectable_gen'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'reflectable:reflectable', [_i3.reflectableBuilder], _i1.toRoot(),
      hideOutput: false,
      defaultGenerateFor: const _i4.InputSet(include: [
        r'benchmark/**.dart',
        r'bin/**.dart',
        r'example/**.dart',
        r'lib/main.dart',
        r'test/**.dart',
        r'tool/**.dart',
        r'web/**.dart'
      ])),
  _i1.apply(r'source_gen:combining_builder', [_i5.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: const [r'source_gen:part_cleanup']),
  _i1.applyPostProcess(r'source_gen:part_cleanup', _i5.partCleanup)
];
void main(List<String> args, [_i6.SendPort sendPort]) async {
  var result = await _i7.run(args, _builders);
  sendPort?.send(result);
  _i8.exitCode = result;
}
