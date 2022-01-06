import 'package:app/common/base_view_model.dart';
import 'package:app/model/list_title_model.dart';
import 'package:flutter/services.dart';

abstract class ListTitleViewModel extends BaseViewModel {
  final List<ListTitleModel> models;
  ListTitleViewModel(String title, this.models) : super(title);

  Future<String> makedown(String fileName) async {
    return await rootBundle.loadString("books/$fileName");
  }
}
