import 'package:app/common/base_page.dart';
import 'package:app/page/key/example/global_key_position_size/view_model/global_key_position_size_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_string/random_string.dart';

class GlobalKeyPositionSizePage extends StatefulWidget {
  const GlobalKeyPositionSizePage({Key? key}) : super(key: key);

  @override
  _GlobalKeyPositionSizePageState createState() =>
      _GlobalKeyPositionSizePageState();
}

class _GlobalKeyPositionSizePageState extends BasePage<
    GlobalKeyPositionSizePage, GlobalKeyPositionSizePageViewModel> {
  final GlobalKey _globalKeyA = GlobalKey();

  String _randomString = randomString(20);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      BuildContext? context = _globalKeyA.currentContext;
      if (context == null) return;
      RenderBox? box = context.findRenderObject() as RenderBox?;
      if (box == null) return;
      Size size = box.size;
      Offset offset = box.localToGlobal(Offset.zero);
      GlobalKeyPositionSizePageViewModel viewModel = context.read();
      viewModel
        ..size = size
        ..offset = offset
        ..update();
    });
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Selector<GlobalKeyPositionSizePageViewModel, _Frame>(
            selector: (p0, p1) => _Frame(p1.offset, p1.size),
            builder: (context, value, child) {
              return Container(
                color: Colors.black,
                width: value.size.width + value.size.width / 4,
                height: value.size.height + value.size.height / 4,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        key: _globalKeyA,
                        color: Colors.green,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          _randomString,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        color: Colors.purple,
                        width: value.size.width / 2,
                        height: value.size.height / 2,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _randomString = randomString(20);
                });
              },
              child: const Text("随机字符"))
        ],
      ),
    );
  }

  @override
  GlobalKeyPositionSizePageViewModel createViewModel() {
    return GlobalKeyPositionSizePageViewModel();
  }
}

class _Frame {
  final Offset offset;
  final Size size;
  _Frame(this.offset, this.size);
}
