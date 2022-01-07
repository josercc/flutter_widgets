import 'dart:developer';

import 'package:app/common/base_page.dart';
import 'package:app/page/edgeinsets_geometry/Example/edgeinsets/view_model/edgeinsets_page_view_model.dart';
import 'package:flutter/material.dart';

class EdgeInsetsPage extends StatefulWidget {
  const EdgeInsetsPage({Key? key}) : super(key: key);

  @override
  _EdgeInsetsPageState createState() => _EdgeInsetsPageState();
}

class _EdgeInsetsPageState
    extends BasePage<EdgeInsetsPage, EdgeInsetsPageViewModel> {
  @override
  Widget buildBody(BuildContext context) {
    return ListView(
      children: [
        _examplePaddingContent(
          "EdgeInsets.all(8.0)",
          const EdgeInsets.all(8.0),
        ),
        _examplePaddingContent(
          "EdgeInsets.symmetric(vertical: 8.0)",
          const EdgeInsets.symmetric(vertical: 8.0),
        ),
        _examplePaddingContent(
          "EdgeInsets.symmetric(horizontal: 8.0)",
          const EdgeInsets.symmetric(horizontal: 8.0),
        ),
        _examplePaddingContent(
          "EdgeInsets.symmetric(horizontal: 8, vertical: 8)",
          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        ),
        _examplePaddingContent(
          "EdgeInsets.fromLTRB(5,8,7,3)",
          const EdgeInsets.fromLTRB(5, 8, 7, 3),
        ),
        _examplePaddingContent(
          "EdgeInsets.only(left:8)",
          const EdgeInsets.only(left: 8),
        ),
        _examplePaddingContent(
          "EdgeInsets.only(right:4, bottom:5)",
          const EdgeInsets.only(right: 4, bottom: 5),
        ),
        _exampleFunctionContent(
          "Function add",
          [
            _descriptionContent(
              """const EdgeInsets.all(8)
              .add(const EdgeInsets.fromLTRB(10, 2, 8, 4))
              .resolve(null)""",
              const EdgeInsets.all(8)
                  .add(const EdgeInsets.fromLTRB(10, 2, 8, 4))
                  .resolve(null),
            ),
          ],
        ),
        _exampleFunctionContent(
          "Function clamp",
          [
            _descriptionContent(
              """const EdgeInsets.fromLTRB(5, 3, 8, 10)
              .clamp(
                const EdgeInsets.fromLTRB(2, 1, 4, 1),
                const EdgeInsets.fromLTRB(5, 6, 9, 12),
              )
              .resolve(null)""",
              const EdgeInsets.fromLTRB(5, 3, 8, 10)
                  .clamp(
                    const EdgeInsets.fromLTRB(2, 1, 4, 1),
                    const EdgeInsets.fromLTRB(5, 6, 9, 12),
                  )
                  .resolve(null),
            ),
          ],
        ),
        _exampleFunctionContent(
          "Function copyWith",
          [
            _descriptionContent(
              """const EdgeInsets.fromLTRB(5, 3, 8, 10).copyWith(left: 10)""",
              const EdgeInsets.fromLTRB(5, 3, 8, 10).copyWith(left: 10),
            ),
          ],
        ),
        _exampleFunctionContent(
          "Function deflateRect",
          [
            _descriptionContent(
              """
EdgeInsets edgeInsets = const EdgeInsets.all(8);
Rect rect = const Rect.fromLTRB(1, 2, 9, 10);
rect = edgeInsets.deflateRect(rect);
EdgeInsets.fromLTRB(rect.left, rect.top, rect.right, rect.bottom);
""",
              _deflateRect(),
            ),
            _descriptionContent(
              """
EdgeInsets edgeInsets = const EdgeInsets.fromLTRB(8, 8, -2, -8);
Rect rect = const Rect.fromLTRB(1, 2, 9, 10);
rect = edgeInsets.deflateRect(rect);
EdgeInsets.fromLTRB(rect.left, rect.top, rect.right, rect.bottom);
            """,
              _deflateRect1(),
            ),
          ],
        ),
      ],
    );
  }

  EdgeInsets _deflateRect() {
    EdgeInsets edgeInsets = const EdgeInsets.all(8);
    Rect rect = const Rect.fromLTRB(1, 2, 9, 10);
    rect = edgeInsets.deflateRect(rect);
    return EdgeInsets.fromLTRB(rect.left, rect.top, rect.right, rect.bottom);
  }

  EdgeInsets _deflateRect1() {
    EdgeInsets edgeInsets = const EdgeInsets.fromLTRB(8, 8, -2, -8);
    Rect rect = const Rect.fromLTRB(1, 2, 9, 10);
    rect = edgeInsets.deflateRect(rect);
    return EdgeInsets.fromLTRB(rect.left, rect.top, rect.right, rect.bottom);
  }

  @override
  EdgeInsetsPageViewModel createViewModel() {
    return EdgeInsetsPageViewModel();
  }

  Widget _descriptionContent(String description, EdgeInsets edgeInsets) {
    log("$edgeInsets");
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(color: Colors.grey),
              ),
              Text(edgeInsets.toString()),
            ],
          ),
        ),
        _paddingContent(edgeInsets)
      ],
    );
  }

  Widget _exampleFunctionContent(String title, List<Widget> contents) {
    contents.insert(0, _headerTitle(title));
    return Column(
      children: contents,
    );
  }

  Widget _examplePaddingContent(String title, EdgeInsets edgeInsets) {
    return Column(
      children: [
        _headerTitle(title),
        _paddingContent(edgeInsets),
      ],
    );
  }

  Widget _headerTitle(String title) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(title),
        ),
      ),
    );
  }

  Widget _paddingContent(EdgeInsets edgeInsets) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Padding(
            padding: edgeInsets,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
