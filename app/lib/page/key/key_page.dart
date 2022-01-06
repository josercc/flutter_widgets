import 'package:app/page/key/view_model/key_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

class KeyPage extends StatefulWidget {
  const KeyPage({Key? key}) : super(key: key);

  @override
  _KeyPageState createState() => _KeyPageState();
}

class _KeyPageState extends ListTitlePage<KeyPage, KeyPageViewModel> {
  @override
  KeyPageViewModel createViewModel() {
    return KeyPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      // _markdownWidget(context),
    ];
  }

  Widget _markdownWidget(BuildContext context) {
    return FutureProvider<String>(
      initialData: "",
      create: (context) => viewModel.makedown("Key.md"),
      child: Consumer<String>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: value,
          ),
        ),
      ),
    );
  }
}
