import 'package:app/page/list_title/view_model/list_title_view_model.dart';
import 'package:flutter/material.dart';

class GlobalKeyPositionSizePageViewModel extends ListTitleViewModel {
  GlobalKeyPositionSizePageViewModel() : super("GlobalKey 获取组件的大小和位置", []);

  Size size = Size.zero;
  Offset offset = Offset.zero;
}
