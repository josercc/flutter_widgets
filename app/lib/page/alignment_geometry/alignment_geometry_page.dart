import 'package:app/page/alignment_geometry/view_model/alignment_geometry_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class AlignmentGeometryPage extends StatefulWidget {
  const AlignmentGeometryPage({Key? key}) : super(key: key);

  @override
  _AlignmentGeometryPageState createState() => _AlignmentGeometryPageState();
}

class _AlignmentGeometryPageState extends ListTitlePage<AlignmentGeometryPage,
    AlignmentGeometryPageViewModel> {
  @override
  AlignmentGeometryPageViewModel createViewModel() {
    return AlignmentGeometryPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }
}
