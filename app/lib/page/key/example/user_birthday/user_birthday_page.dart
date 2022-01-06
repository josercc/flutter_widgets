import 'package:app/model/user_birthday_model.dart';
import 'package:app/page/key/example/user_birthday/view_model/user_birthday_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:flutter/material.dart';

class UserBirthdayPage extends StatefulWidget {
  const UserBirthdayPage({Key? key}) : super(key: key);

  @override
  _UserBirthdayPageState createState() => _UserBirthdayPageState();
}

class _UserBirthdayPageState
    extends ListTitlePage<UserBirthdayPage, UserBirthdayPageViewModel> {
  final List<UserBirthdayModel> users = [
    UserBirthdayModel("张一", "1989年8月8日"),
    UserBirthdayModel("李二", "1989年8月8日"),
    UserBirthdayModel("张一", "2021年10月10日"),
    UserBirthdayModel("王三", "2022年3月4日"),
  ];

  @override
  UserBirthdayPageViewModel createViewModel() {
    return UserBirthdayPageViewModel();
  }

  @override
  Widget buildBody(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        UserBirthdayModel model = users[index];
        return Dismissible(
          key: ObjectKey(model),
          onDismissed: (direction) {
            users.removeAt(index);
          },
          child: ListTile(
            title: Text(model.name),
            subtitle: Text(model.birthday),
          ),
        );
      },
    );
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [];
  }
}
