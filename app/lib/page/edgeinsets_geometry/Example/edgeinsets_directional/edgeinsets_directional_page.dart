import 'package:app/common/base_page.dart';
import 'package:flutter/material.dart';
import 'view_model/edgeinsets_directional_page_view_model.dart';

class EdgeInsetsDirectionalPage extends StatefulWidget {
  const EdgeInsetsDirectionalPage({Key? key}) : super(key: key);

  @override
  _EdgeInsetsDirectionalPageState createState() =>
      _EdgeInsetsDirectionalPageState();
}

class _EdgeInsetsDirectionalPageState extends BasePage<
    EdgeInsetsDirectionalPage, EdgeInsetsDirectionalPageViewModel> {
  @override
  Widget buildBody(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        "123 Hello a1 b2 World!",
        textDirection: TextDirection.rtl,
      ),
    );
  }

  @override
  EdgeInsetsDirectionalPageViewModel createViewModel() {
    return EdgeInsetsDirectionalPageViewModel();
  }
}
