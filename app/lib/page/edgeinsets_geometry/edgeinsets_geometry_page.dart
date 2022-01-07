import 'package:app/page/edgeinsets_geometry/view_model/edgeinsets_geometry_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class EdgeInsetsGeometryPage extends StatefulWidget {
  const EdgeInsetsGeometryPage({Key? key}) : super(key: key);

  @override
  _EdgeInsetsGeometryPageState createState() => _EdgeInsetsGeometryPageState();
}

class _EdgeInsetsGeometryPageState extends ListTitlePage<EdgeInsetsGeometryPage,
    EdgeInsetsGeometryPageViewModel> {
  @override
  EdgeInsetsGeometryPageViewModel createViewModel() {
    return EdgeInsetsGeometryPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }
}
