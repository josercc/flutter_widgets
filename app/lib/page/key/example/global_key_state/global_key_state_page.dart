import 'package:flutter/material.dart';

class GlobalKeyStatePage extends StatefulWidget {
  const GlobalKeyStatePage({Key? key}) : super(key: key);

  @override
  _GlobalKeyStatePageState createState() => _GlobalKeyStatePageState();
}

class _GlobalKeyStatePageState extends State<GlobalKeyStatePage> {
  final GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("使用 GlobalKey 获取 State"),
      ),
      body: Center(
        child: Column(
          children: [
            _CountView(
              key: _globalKey,
            ),
            TextButton(
              onPressed: () {
                __CountViewState? state =
                    _globalKey.currentState as __CountViewState;
                state.addCount();
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}

class _CountView extends StatefulWidget {
  const _CountView({Key? key}) : super(key: key);

  @override
  __CountViewState createState() => __CountViewState();
}

class __CountViewState extends State<_CountView> {
  int _count = 0;
  void addCount() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_count.toString()),
    );
  }
}
