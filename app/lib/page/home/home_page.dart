import 'package:app/page/home/view_model/home_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ListTitlePage<HomePage, HomePageViewModel> {
  @override
  HomePageViewModel createViewModel() {
    return HomePageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }
}
