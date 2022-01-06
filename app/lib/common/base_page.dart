import 'package:app/common/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BasePage<T extends StatefulWidget, M extends BaseViewModel>
    extends State<T> {
  late M viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = createViewModel();
  }

  M createViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: viewModel,
      child: Scaffold(
        appBar: AppBar(
          title: Text(viewModel.title),
        ),
        body: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context);
}
