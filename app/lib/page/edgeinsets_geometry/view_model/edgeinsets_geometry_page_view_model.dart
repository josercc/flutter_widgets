import 'package:app/model/list_title_model.dart';
import 'package:app/page/edgeinsets_geometry/Example/edgeinsets/edgeinsets_page.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';

class EdgeInsetsGeometryPageViewModel extends ListTitleViewModel {
  EdgeInsetsGeometryPageViewModel()
      : super("EdgeInsetsGeometry", [
          ListTitleModel(
            "EdgeInsets",
            const EdgeInsetsPage(),
          ),
        ]);
}
