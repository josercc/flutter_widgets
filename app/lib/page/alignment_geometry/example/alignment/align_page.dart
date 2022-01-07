import 'package:app/common/base_page.dart';
import 'package:app/page/alignment_geometry/example/alignment/view_model/align_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends BasePage<AlignPage, AlignPageViewModel> {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            color: Colors.green,
            child: Consumer<AlignPageViewModel>(
              builder: (context, value, child) {
                return Align(
                  alignment: Alignment(value.x, value.y),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.purple,
                  ),
                );
              },
            ),
          ),
          const Text("X:"),
          Selector<AlignPageViewModel, double>(
            selector: (p0, p1) => p1.x,
            builder: (context, value, child) {
              return Row(
                children: [
                  Text("X:${value.toStringAsFixed(1)}"),
                  const Spacer(),
                  const Text("-2"),
                  Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..x = value
                        ..update();
                    },
                  ),
                  const Text("2"),
                ],
              );
            },
          ),
          const Text("Y:"),
          Selector<AlignPageViewModel, double>(
            selector: (p0, p1) => p1.y,
            builder: (context, value, child) {
              return Row(
                children: [
                  Text("Y:${value.toStringAsFixed(1)}"),
                  const Spacer(),
                  const Text("-2"),
                  Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..y = value
                        ..update();
                    },
                  ),
                  const Text("2"),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  AlignPageViewModel createViewModel() {
    return AlignPageViewModel();
  }
}
