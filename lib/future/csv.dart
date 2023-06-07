import 'dart:io';

import 'package:csv/csv.dart';
import 'package:dragon_quest/exception/copy.dart';

Future<void> main() async {
  try {
    final file = File('sample.csv');
    final csvData = file.readAsLinesSync();

    final csvDecoder = CsvToListConverter();
    final csvList = csvDecoder.convert(csvData.join('\n'));

    for (var csv in csvList) {
      csv[3] = '김석봉';
    }
    print(csvList);

    final dartFile = File('lib/future/csv.dart');
    final csvContent = ListToCsvConverter().convert(csvList);
    await dartFile.writeAsString(csvContent);

    copy('lib/future/csv.dart', 'sample_copy.csv');
  } catch (e) {
    print(e);
  }
}
