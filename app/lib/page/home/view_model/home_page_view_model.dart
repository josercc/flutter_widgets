import 'package:app/model/list_title_model.dart';
import 'package:app/page/key/key_page.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';

class HomePageViewModel extends ListTitleViewModel {
  HomePageViewModel()
      : super("Flutter Widgets", [
          ListTitleModel("Key", const KeyPage()),
        ]);
}
