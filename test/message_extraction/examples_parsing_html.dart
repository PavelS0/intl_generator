import 'dart:io';

import 'package:intl_generator/extract_messages.dart';
import 'package:path/path.dart' as path;
// ignore: invalid_annotation_target
@Timeout(const Duration(seconds: 180))
import 'package:test/test.dart';

import '../data_directory.dart';

main() {
  test("Message examples are correctly extracted", () {
    var file = path.join(packageDirectory, 'test', 'message_extraction',
        'foo_angular_html.html');
    var extraction = new MessageExtraction();
    var messages = extraction.parseFile(new File(file));
    expect(messages['bark']!.examples, {"x": 'bark'});
    expect(messages['foo']!.examples, {"x": 'foo'});
    expect(messages['bar']!.examples, {"x": 'bar'});
    expect(messages['baz']!.examples, {"x": 'baz'});
    expect(messages['meow']!.examples, {"x": 'meow'});
  });
}
