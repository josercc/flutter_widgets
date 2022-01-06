import 'package:app/common/base_page.dart';
import 'package:app/model/list_title_model.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';
import 'package:flutter/material.dart';

abstract class ListTitlePage<T extends StatefulWidget,
    M extends ListTitleViewModel> extends BasePage<T, M> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildBody(BuildContext context) {
    List<Widget> contentWidgets = makeContentWidgets(context);
    return SafeArea(
        child: ListView.builder(
      itemCount: contentWidgets.length + viewModel.models.length,
      itemBuilder: (context, index) {
        if (index < contentWidgets.length) return contentWidgets[index];
        int modelIndex = index - contentWidgets.length;
        ListTitleModel model = viewModel.models[modelIndex];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => model.page,
            ));
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            color: Colors.lightBlueAccent,
            child: ListTile(
              title: Text(model.title),
            ),
          ),
        );
      },
    ));
  }

  List<Widget> makeContentWidgets(BuildContext context);
}
