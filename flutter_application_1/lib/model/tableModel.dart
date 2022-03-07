class TableModel {
  List<String> headerData;
  List<List<String>> rowData;

  TableModel(this.headerData, this.rowData);

  // factory TableModel.fromJson(Map<String, dynamic> json) {
  //   return TableModel(
  //     json['data'][0]["Headers"].split('´').toList(),
  //     //buildRowData(json),
  //   );
  // }

  List<List<String>> buildRowData(Map<String, dynamic> json) {
    List<List<String>> rowDataCollection = [];
    json['DayEnd'][0]["DataList"].forEach((rows) {
      rowDataCollection.add(rows['Data'].split('´').toList());
    });

    return rowDataCollection;
  }
}
