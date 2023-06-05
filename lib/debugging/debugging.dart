import 'dart:convert';

void main() {
  final String json = '''{
    "collectionChartDataList": [
      {
        "collectionName": "collectionName",
        "collectionSalePrice": null
      },
      {
        "collectionName": "collectionName",
        "collectionSalePrice": [
          {
            "price": 59.75,
            "cvtDatetime": "2023-03-26T08:08:35"
          },
          {
            "price": 60.00,
            "cvtDatetime": "2023-03-26T08:08:45"
          }
        ]
      }
    ]
  }''';

  Map<String, dynamic> jsonData = jsonDecode(json);

  List<Map<String, dynamic>> collectionChartDataList =
      jsonData['collectionChartDataList'];

  print(collectionChartDataList);

  // 데이터 확인
  // for (var data in collectionChartDataList) {
  //   String collectionName = data['collectionName'];
  //   dynamic collectionSalePrice = data['collectionSalePrice'];
  //
  //   print('Collection Name: $collectionName');
  //   print('Collection Sale Price: $collectionSalePrice');
  //   print('---');
  // }
}
