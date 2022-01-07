import 'package:app/model/list_title_model.dart';
import 'package:app/page/alignment_geometry/example/alignment/align_page.dart';
import 'package:app/page/alignment_geometry/example/fractional_offset/fractional_offset_page.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';

class AlignmentGeometryPageViewModel extends ListTitleViewModel {
  AlignmentGeometryPageViewModel()
      : super("AlignmentGeometry", [
          ListTitleModel(
            "Alignment Example",
            const AlignPage(),
          ),
          ListTitleModel(
            "FractionalOffset Example",
            const FractionalOffsetPage(),
          ),
        ]);
}
