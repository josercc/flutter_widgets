import 'dart:developer';

import 'package:app/page/key/example/stateless/view_model/stateless_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart' show RandomColor;

class StatelessPage extends StatefulWidget {
  const StatelessPage({Key? key}) : super(key: key);

  @override
  _StatelessPageState createState() => _StatelessPageState();
}

class _StatelessPageState
    extends ListTitlePage<StatelessPage, StatelessPageViewModel> {
  final List<Widget> _colorView = [
    _StatelessColorView(),
    _StatelessColorView(),
  ];

  @override
  StatelessPageViewModel createViewModel() {
    return StatelessPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _colorView,
      ),
      TextButton(
          onPressed: () {
            _colorView.insert(0, _colorView.removeAt(1));
            setState(() {});
          },
          child: const Text("交换组件")),
    ];
  }
}

class _StatelessColorView extends StatelessWidget {
  _StatelessColorView({Key? key}) : super(key: key);

  final Color _color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: _color,
    );
  }
}
