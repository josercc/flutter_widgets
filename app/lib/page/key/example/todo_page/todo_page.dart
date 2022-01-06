import 'dart:developer';
import 'dart:math';

import 'package:app/page/key/example/todo_page/view_model/todo_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends ListTitlePage<TodoPage, TodoPageViewModel> {
  final List<String> todos = ["Todo1", "Todo2", "Todo3", "Todo4", "Todo5"];

  @override
  TodoPageViewModel createViewModel() {
    return TodoPageViewModel();
  }

  @override
  Widget buildBody(BuildContext context) {
    return ReorderableListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        String text = todos[index];
        return Container(
          key: ValueKey(text),
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(text),
          ),
        );
      },
      onReorder: (oldIndex, newIndex) {
        todos.insert(newIndex, todos[oldIndex]);
        if (oldIndex > newIndex) {
          todos.removeAt(oldIndex + 1);
        } else {
          todos.removeAt(oldIndex);
        }
      },
    );
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }
}
