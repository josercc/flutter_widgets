import 'package:app/model/list_title_model.dart';
import 'package:app/page/key/example/global_key_position_size/global_key_position_size_page.dart';
import 'package:app/page/key/example/global_key_state/global_key_state_page.dart';
import 'package:app/page/key/example/scroll_hold/scroll_hold_page.dart';
import 'package:app/page/key/example/stateful/stateful_page.dart';
import 'package:app/page/key/example/stateless/stateless_page.dart';
import 'package:app/page/key/example/todo_page/todo_page.dart';
import 'package:app/page/key/example/user_birthday/user_birthday_page.dart';
import 'package:app/page/list_title/view_model/list_title_view_model.dart';

class KeyPageViewModel extends ListTitleViewModel {
  KeyPageViewModel()
      : super("Key", [
          ListTitleModel(
            "StatelessWidget 不需要 Key Example",
            const StatelessPage(),
          ),
          ListTitleModel(
            "StatefulWidget 需要 Key Example",
            const StatefulPage(),
          ),
          ListTitleModel(
            "使用 ValueKey 解决表格拖动问题",
            const TodoPage(),
          ),
          ListTitleModel(
            "使用 ObjectKey 删除用户生日信息",
            const UserBirthdayPage(),
          ),
          ListTitleModel(
            "使用 PageStorageKey 保存页面状态",
            const ScrollHoldPage(),
          ),
          ListTitleModel(
            "使用 GlobalKey 获取 State",
            const GlobalKeyStatePage(),
          ),
          ListTitleModel(
            "GlobalKey 获取组件的大小和位置",
            const GlobalKeyPositionSizePage(),
          ),
        ]);
}
