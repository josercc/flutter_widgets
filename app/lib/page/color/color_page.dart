import 'package:app/page/color/view_model/color_page_view_model.dart';
import 'package:app/page/list_title/list_title_page.dart';
import 'package:app/widgets/description_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends ListTitlePage<ColorPage, ColorPageViewModel> {
  @override
  ColorPageViewModel createViewModel() {
    return ColorPageViewModel();
  }

  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      DescriptionView(
        title: "32位颜色值",
        contents: [
          DescriptionContentView(
            description: "Color(0xFF42A5F5)",
            child: _colorContent(
              const Color(0xFF42A5F5),
            ),
          ),
        ],
      ),
      DescriptionView(
        title: "ARGB",
        contents: [
          DescriptionContentView(
            description: "Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)",
            child: _colorContent(
              const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
            ),
          ),
          DescriptionContentView(
            description: "Color.fromARGB(255, 66, 165, 245)",
            child: _colorContent(
              const Color.fromARGB(255, 66, 165, 245),
            ),
          ),
        ],
      ),
      DescriptionView(
        title: "RGBO",
        contents: [
          DescriptionContentView(
            description: "Color.fromRGBO(66, 165, 245, 1.0)",
            child: _colorContent(
              const Color.fromRGBO(66, 165, 245, 1.0),
            ),
          ),
        ],
      ),
      DescriptionView(
        title: "十六进制8位数缺少一位意味着透明",
        contents: [
          DescriptionContentView(
            description: "Color(0xF42A5F5)",
            child: _colorContent(
              const Color(0xF42A5F5),
            ),
          ),
        ],
      ),
      DescriptionView(
        title: "Colors",
        contents: [
          DescriptionContentView(
            description: "Colors.accents",
            child: _accents(),
          ),
          DescriptionContentView(
            description: "Colors.amber",
            child: _amber(),
          ),
          DescriptionContentView(
            description: "Colors.amberAccent",
            child: _amberAccent(),
          ),
          DescriptionContentView(
            description: "Colors.black",
            child: _colorDetailView("Colors.black", Colors.black, Colors.white),
          ),
          DescriptionContentView(
            description: "Colors.black12",
            child: _colorDetailView("Colors.black12", Colors.black12),
          ),
          DescriptionContentView(
            description: "Colors.black26",
            child: _colorDetailView("Colors.black26", Colors.black26),
          ),
          DescriptionContentView(
            description: "Colors.black38",
            child: _colorDetailView("Colors.black38", Colors.black38),
          ),
          DescriptionContentView(
            description: "Colors.black45",
            child: _colorDetailView("Colors.black45", Colors.black45),
          ),
          DescriptionContentView(
            description: "Colors.black54",
            child: _colorDetailView("Colors.black54", Colors.black54),
          ),
          DescriptionContentView(
            description: "Colors.black87",
            child: _colorDetailView(
              "Colors.black87",
              Colors.black87,
              Colors.white,
            ),
          ),
          DescriptionContentView(
            description: "Colors.blue",
            child: Column(
              children: _colorContentFromMaterial("Colors.blue", Colors.blue),
            ),
          ),
          DescriptionContentView(
            description: "Colors.blueAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                  "Colors.blueAccent", Colors.blueAccent),
            ),
          ),
          DescriptionContentView(
            description: "Colors.blueGrey",
            child: Column(
              children:
                  _colorContentFromMaterial("Colors.blueGrey", Colors.blueGrey),
            ),
          ),
          DescriptionContentView(
            description: "Colors.brown",
            child: Column(
              children: _colorContentFromMaterial("Colors.brown", Colors.brown),
            ),
          ),
          DescriptionContentView(
            description: "Colors.cyan",
            child: Column(
              children: _colorContentFromMaterial("Colors.cyan", Colors.cyan),
            ),
          ),
          DescriptionContentView(
            description: "Colors.cyanAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                  "Colors.cyanAccent", Colors.cyanAccent),
            ),
          ),
          DescriptionContentView(
            description: "Colors.deepOrang",
            child: Column(
              children: _colorContentFromMaterial(
                  "Colors.deepOrange", Colors.deepOrange),
            ),
          ),
          DescriptionContentView(
            description: "Colors.deepOrangeAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                  "Colors.deepOrangeAccent", Colors.deepOrangeAccent),
            ),
          ),
          DescriptionContentView(
            description: "Colors.deepPurple",
            child: Column(
              children: _colorContentFromMaterial(
                  "Colors.deepPurple", Colors.deepPurple),
            ),
          ),
          DescriptionContentView(
            description: "Colors.deepPurpleAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.deepPurpleAccent",
                Colors.deepPurpleAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.green",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.green",
                Colors.green,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.greenAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.greenAccent",
                Colors.greenAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.grey",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.grey",
                Colors.grey,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.indigo",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.indigo",
                Colors.indigo,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.indigoAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.indigoAccent",
                Colors.indigoAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.lightBlue",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.lightBlue",
                Colors.lightBlue,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.lightBlueAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.lightBlueAccent",
                Colors.lightBlueAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.lightGreen",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.lightGreen",
                Colors.lightGreen,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.lightGreenAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.lightGreenAccent",
                Colors.lightGreenAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.lime",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.lime",
                Colors.lime,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.limeAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.limeAccent",
                Colors.limeAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.orange",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.orange",
                Colors.orange,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.orangeAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.orangeAccent",
                Colors.orangeAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.pink",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.pink",
                Colors.pink,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.pinkAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.pinkAccent",
                Colors.pinkAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.primaries",
            child: _primaries(),
          ),
          DescriptionContentView(
            description: "Colors.purple",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.purple",
                Colors.purple,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.purpleAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.purpleAccent",
                Colors.purpleAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.red",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.red",
                Colors.red,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.redAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.redAccent",
                Colors.redAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.teal",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.teal",
                Colors.teal,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.tealAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.tealAccent",
                Colors.tealAccent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.transparent(透明)",
            child: Center(
              child: _colorDetailView(
                "Colors.transparent(透明)",
                Colors.transparent,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.white",
            child: Center(
              child: _colorDetailView(
                "Colors.white",
                Colors.white,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.white10",
            child: _colorDetailView(
              "Colors.white10",
              Colors.white10,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white12",
            child: _colorDetailView(
              "Colors.white12",
              Colors.white12,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white24",
            child: _colorDetailView(
              "Colors.white24",
              Colors.white24,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white30",
            child: _colorDetailView(
              "Colors.white30",
              Colors.white30,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white38",
            child: _colorDetailView(
              "Colors.white38",
              Colors.white38,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white54",
            child: _colorDetailView(
              "Colors.white54",
              Colors.white54,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white60",
            child: _colorDetailView(
              "Colors.white60",
              Colors.white60,
            ),
          ),
          DescriptionContentView(
            description: "Colors.white70",
            child: _colorDetailView(
              "Colors.white70",
              Colors.white70,
            ),
          ),
          DescriptionContentView(
            description: "Colors.yellow",
            child: Column(
              children: _colorContentFromMaterial(
                "Colors.yellow",
                Colors.yellow,
              ),
            ),
          ),
          DescriptionContentView(
            description: "Colors.yellowAccent",
            child: Column(
              children: _colorContentFromAccentColor(
                "Colors.yellowAccent",
                Colors.yellowAccent,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      DescriptionView(
        title: "CupertinoDynamicColor",
        contents: [
          DescriptionContentView(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CupertinoDynamicColorDarkApp(),
                  ),
                );
              },
              child: Container(
                color: Colors.grey.shade300,
                child: const ListTile(
                  title: Text("根据黑暗模式自动切换颜色"),
                  trailing: Text("点击查看"),
                ),
              ),
            ),
          ),
          DescriptionContentView(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CupertinoDynamicColorThemeApp(),
                  ),
                );
              },
              child: Container(
                color: Colors.grey.shade300,
                child: const ListTile(
                  title: Text("根据黑暗模式获取 CupertinoTheme "),
                  trailing: Text("点击查看"),
                ),
              ),
            ),
          ),
          DescriptionContentView(
            description: "MaterialStateColor",
            child: TextButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return TimePickerTheme(
                      data: TimePickerTheme.of(context).copyWith(
                        dayPeriodColor: CustomTimeDayPeriodColor(),
                      ),
                      child: child ?? Container(),
                    );
                  },
                );
              },
              child: const Text("Show Time Picker"),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
    ];
  }

  Widget _amberAccent() {
    return Column(
      children: _colorContentFromAccentColor(
        "Colors.amberAccent",
        Colors.amberAccent,
      ),
    );
  }

  Widget _amber() {
    return Column(
      children: _colorContentFromMaterial("Colors.amber", Colors.amber),
    );
  }

  Widget _accents() {
    List<Widget> children = [];
    for (var i = 0; i < Colors.accents.length; i++) {
      children.addAll(
        _colorContentFromAccentColor(
          "Colors.accents[$i]",
          Colors.accents[i],
        ),
      );
    }
    return Center(
      child: Column(
        children: children,
      ),
    );
  }

  Widget _primaries() {
    List<Widget> children = [];
    for (var i = 0; i < Colors.primaries.length; i++) {
      children.addAll(
        _colorContentFromMaterial("Colors.primaries[$i]", Colors.primaries[i]),
      );
    }
    return Column(
      children: children,
    );
  }

  Widget _colorDetailView(String title, Color color,
      [Color titleColor = Colors.black]) {
    return Container(
      width: double.infinity,
      color: color,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(color: titleColor),
          ),
        ),
      ),
    );
  }

  List<Widget> _colorContentFromAccentColor(
    String title,
    MaterialAccentColor color,
  ) {
    return [
      _colorDetailView("$title.shade100", color.shade100),
      _colorDetailView("$title.shade200", color.shade200),
      _colorDetailView("$title.shade400", color.shade400),
      _colorDetailView("$title.shade700", color.shade700),
    ];
  }

  List<Widget> _colorContentFromMaterial(String title, MaterialColor color) {
    return [
      _colorDetailView("$title.shade50", color.shade50),
      _colorDetailView("$title.shade100", color.shade100),
      _colorDetailView("$title.shade200", color.shade200),
      _colorDetailView("$title.shade300", color.shade300),
      _colorDetailView("$title.shade400", color.shade400),
      _colorDetailView("$title.shade500", color.shade500),
      _colorDetailView("$title.shade600", color.shade600),
      _colorDetailView("$title.shade700", color.shade700),
      _colorDetailView("$title.shade800", color.shade800),
      _colorDetailView("$title.shade900", color.shade900),
    ];
  }

  Widget _colorTitleContent(String title, Color color) {
    return Column(
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        _colorContent(color),
      ],
    );
  }

  Widget _colorContent(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          color: color,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

class CupertinoDynamicColorDarkApp extends StatefulWidget {
  const CupertinoDynamicColorDarkApp({Key? key}) : super(key: key);

  @override
  _CupertinoDynamicColorDarkAppState createState() =>
      _CupertinoDynamicColorDarkAppState();
}

class _CupertinoDynamicColorDarkAppState
    extends State<CupertinoDynamicColorDarkApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            color: const CupertinoDynamicColor.withBrightness(
              color: Colors.black,
              darkColor: Colors.white,
            ),
            child: const Text(
              "登录",
              style: TextStyle(
                color: CupertinoDynamicColor.withBrightness(
                  color: Colors.white,
                  darkColor: Colors.black,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class CupertinoDynamicColorThemeApp extends StatefulWidget {
  const CupertinoDynamicColorThemeApp({Key? key}) : super(key: key);

  @override
  _CupertinoDynamicColorThemeAppState createState() =>
      _CupertinoDynamicColorThemeAppState();
}

class _CupertinoDynamicColorThemeAppState
    extends State<CupertinoDynamicColorThemeApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoDynamicColor.resolve(
            CupertinoColors.darkBackgroundGray, context),
        child: Center(
          child: CupertinoButton(
            color: CupertinoTheme.of(context).primaryColor,
            child: const Text("登录"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class CustomTimeDayPeriodColor extends MaterialStateColor {
  CustomTimeDayPeriodColor() : super(_defaultColor);

  static const int _defaultColor = 0xcafefeed;
  static const int _pressedColor = 0xdeadbeef;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}
