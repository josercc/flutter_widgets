import 'package:app/model/list_title_model.dart';
import 'package:app/page/alignment_geometry/alignment_geometry_page.dart';
import 'package:app/page/color/color_page.dart';
import 'package:app/page/edgeinsets_geometry/edgeinsets_geometry_page.dart';
import 'package:app/page/key/key_page.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';

class HomePageViewModel extends ListTitleViewModel {
  HomePageViewModel()
      : super("Flutter Widgets", [
          ListTitleModel(
            "Key",
            const KeyPage(),
          ),
          ListTitleModel(
            "AlignmentGeometry",
            const AlignmentGeometryPage(),
          ),
          ListTitleModel(
            "EdgeInsetsGeometry",
            const EdgeInsetsGeometryPage(),
          ),
          ListTitleModel(
            "Color",
            const ColorPage(),
          ),
        ]);
}
