import 'dart:developer';

import 'package:app/page/key/example/stateful/view_model/stateful_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color/random_color.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState
    extends ListTitlePage<StatefulPage, StatefulPageViewModel> {
  final List<Widget> _colorViews = [
    Container(key: UniqueKey(), child: _StatefulColorView(key: UniqueKey())),
    Container(key: UniqueKey(), child: _StatefulColorView(key: UniqueKey())),
  ];

  @override
  StatefulPageViewModel createViewModel() {
    return StatefulPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _colorViews,
      ),
      TextButton(
        onPressed: () {
          setState(() {
            _colorViews.insert(0, _colorViews.removeLast());
          });
        },
        child: const Text("交换试图"),
      ),
    ];
  }
}

class _StatefulColorView extends StatefulWidget {
  const _StatefulColorView({Key? key}) : super(key: key);

  @override
  __StatefulColorViewState createState() => __StatefulColorViewState();
}

class __StatefulColorViewState extends State<_StatefulColorView> {
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
