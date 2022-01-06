import 'package:app/page/key/example/scroll_hold/view_model/scroll_hold_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class ScrollHoldPage extends StatefulWidget {
  const ScrollHoldPage({Key? key}) : super(key: key);

  @override
  _ScrollHoldPageState createState() => _ScrollHoldPageState();
}

class _ScrollHoldPageState
    extends ListTitlePage<ScrollHoldPage, ScrollHoldPageViewModel> {
  @override
  void initState() {
    super.initState();
  }

  @override
  ScrollHoldPageViewModel createViewModel() {
    return ScrollHoldPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("使用 PageStorageKey 保存页面状态"),
          bottom: const TabBar(tabs: [
            Tab(text: "1"),
            Tab(text: "2"),
            Tab(text: "3"),
          ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
            key: const PageStorageKey(0),
            itemCount: 100,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
          ListView.builder(
            key: const PageStorageKey(1),
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
          ListView.builder(
            key: const PageStorageKey(2),
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
        ]),
      ),
    );
  }
}
