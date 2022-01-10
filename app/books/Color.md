> `ARGB`32位颜色值

## Color的创建

### 通过 32 位 颜色值

```dart
Color(0xFF42A5F5)
```

![image-20220107143302929](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071433961.png)

### ARGB

```dart
Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)
```

![image-20220107143302929](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071436081.png)

```dart
Color.fromARGB(255, 66, 165, 245)
```

![image-20220107143302929](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071437492.png)

### RGBO

```dart
Color.fromRGBO(66, 165, 245, 1.0)
```

![image-20220107143302929](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071442478.png)

> 如果您在使用颜色时遇到问题，其中您的颜色似乎无法绘制，请检查以确保您指定的是完整的 8 个十六进制数字。 如果您只指定六个，则假定前两位数字为零，这意味着完全透明：

## Colors

> 我们可以通过`Colors`快速的获取一种颜色

### Colors.accents

> 一组配色板

![image-20220107163212442](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071632493.png)

![image-20220107163253751](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071632779.png)

![image-20220107163342550](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071633576.png)

![image-20220107163417378](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071634401.png)

![image-20220107163459095](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071634119.png)

![image-20220107163535606](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071635633.png)

### Colors.amber

![image-20220107164528351](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071645392.png)

### Colors.amberAccent

![image-20220107171430471](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071714511.png)

### Colors.black

![image-20220107172208679](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071722698.png)

### Colors.black12

![image-20220107172245590](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071722609.png)



### Colors.black26

![image-20220107172616471](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071726498.png)

### Colors.black38

![image-20220107172821556](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071728585.png)

### Colors.black45

![image-20220107172957466](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071729493.png)

### Colors.black54



![image-20220107174142373](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071741416.png)

### Colors.black87

![image-20220107174217059](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071742086.png)

### Colors.blue

![image-20220107174759164](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071747192.png)

### Colors.blueAccent

![image-20220107175024753](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071750778.png)

### Colors.blueGrey

![image-20220107175217401](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071752428.png)

### Colors.brown

![image-20220107175357442](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071753471.png)

### Colors.cyan

![image-20220107175542092](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071755121.png)

### Colors.cyanAccent



![image-20220107175718880](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071757908.png)

### Colors.deepOrange

![image-20220107180049308](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071800335.png)

### Colors.deepOrangeAccent

![image-20220110081925108](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100819166.png)



### Colors.deepPurple

![image-20220110082347299](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100823327.png)

### Colors.deepPurpleAccent

![image-20220110082608348](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100826376.png)

### Colors.green

![image-20220110082757923](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100827950.png)

### Colors.greenAccent

![image-20220110083045188](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100830213.png)

### Colors.grey

![image-20220110083444182](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100834213.png)

### Colors.indigo

![image-20220110083607066](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100836096.png)

### Colors.indigoAccent

![image-20220110083757222](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100837250.png)

### Colors.lightBlue

![image-20220110083931557](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100839588.png)

### Colors.lightBlueAccent

![image-20220110084107407](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100841438.png)

### Colors.lightGreen

![image-20220110084221029](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100842059.png)

### Colors.lightGreenAccent

![image-20220110084347751](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100843783.png)

### Colors.lime

![image-20220110084503370](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100845398.png)

### Colors.limeAccent

![image-20220110084621632](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100846662.png)

### Colors.orange

![image-20220110084735506](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100847534.png)

### Colors.orangeAccent

![image-20220110085002620](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100850649.png)

### Colors.pink

![image-20220110085124945](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100851975.png)

### Colors.pinkAccent

![image-20220110085301725](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100853756.png)

### Colors.primaries

![image-20220110085722413](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100857444.png)

![image-20220110085748855](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100857883.png)

![image-20220110085813241](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100858276.png)

![image-20220110085841805](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100858836.png)

![image-20220110085913483](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100859517.png)

![image-20220110085937655](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100859688.png)

![image-20220110090001241](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100900273.png)

![image-20220110090022835](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100900869.png)

![image-20220110090048317](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100900346.png)

![image-20220110090107072](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100901104.png)

![image-20220110090128471](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100901502.png)

![image-20220110090150423](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100901455.png)

![image-20220110090210723](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100902755.png)

![image-20220110090233000](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100902029.png)

![image-20220110090255116](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100902147.png)

![image-20220110090314027](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100903057.png)

![image-20220110090336888](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100903922.png)

![image-20220110090357556](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100903587.png)

### Colors.purple

![image-20220110090514131](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100905164.png)

### Colors.purpleAccent

![image-20220110090702553](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100907587.png)

### Colors.red

![image-20220110090808983](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100908018.png)

### Colors.redAccent

![image-20220110090914880](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100909916.png)

### Colors.teal

![image-20220110091034122](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100910158.png)

### Colors.tealAccent

![image-20220110091150110](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100911146.png)

### Colors.transparent(透明)

### Colors.white

![image-20220110091553735](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100915772.png)

### Colors.white10

![image-20220110091747310](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100917346.png)

### Colors.white12

![image-20220110092059878](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100920898.png)

### Colors.white24

![image-20220110092126422](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100921457.png)

### Colors.white30

![image-20220110092425654](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100924688.png)

### Colors.white38

![image-20220110092528320](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100925356.png)

### Colors.white54

![image-20220110092706741](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100927774.png)

### Colors.white60

![image-20220110092810688](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100928726.png)

### Colors.white70

![image-20220110093027498](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100930537.png)

### Colors.yellow

![image-20220110093458367](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100934403.png)

### Colors.yellowAccent

![image-20220110093614355](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201100936390.png)

## ColorSwatch

一种颜色的色板

### MaterialAccentColor

定义一种强调色，分别有`100 200 400 700`,颜色的值和`200`相等。

> `MaterialAccentColor.value == MaterialAccentColor.shade200`

### MaterialColor

定义单一颜色，分别`50 100 200 300 400 500 600 700 800 900`,颜色值和`500`相等

> `MaterialColor.value == MaterialColor.shade500`

## CupertinoDynamicColor

### 属性

| 属性                          | 类型  | 含义                                          |
| ----------------------------- | ----- | --------------------------------------------- |
| color                         | Color | `light`模式`正常对比度 基本界面亮度`使用颜色  |
| darkColor                     | Color | `Dark`模式`正常对比度 基本界面亮度`使用颜色   |
| darkElevatedColor             | Color | `Dark`模式 `正常对比度 提升界面亮度` 使用颜色 |
| darkHighContrastColor         | Color | `Dark`模式 `高对比度 基本界面亮度`使用颜色    |
| elevatedColor                 | Color | `light`模式 `正常对比度 提升界面亮度`颜色     |
| highContrastColor             | Color | `light`模式`高对比度 基本界面亮度`颜色        |
| highContrastElevatedColor     | Color | `light`模式`高对比度 提升界面亮度`颜色        |
| darkHighContrastElevatedColor | Color | `dark`模式`高对比度 提升界面亮度`颜色         |

### 构造方法

#### CupertinoDynamicColor()

> 创建`BuildContext`自动适应的颜色，所有属性必须初始化。

#### CupertinoDynamicColor.withBrightness()

> 创建一个自适应颜色，它根据给定的 `BuildContext` 的亮度（来自 `MediaQueryData.platformBrightness` 或 `CupertinoThemeData.brightness`）更改其有效颜色。 默认的有效颜色是颜色。
>
> | 属性                          | 值        |
> | ----------------------------- | --------- |
> | color                         | color     |
> | elevatedColor                 | color     |
> | highContrastColor             | color     |
> | highContrastElevatedColor     | color     |
> | darkColor                     | darkColor |
> | darkElevatedColor             | darkColor |
> | darkHighContrastColor         | darkColor |
> | darkHighContrastElevatedColor | darkColor |

#### CupertinoDynamicColor.withBrightnessAndContrast

> 创建一个自适应颜色，它根据给定的 `BuildContext` 的亮度（来自 `MediaQueryData.platformBrightness` 或 `CupertinoThemeData.brightness`）更改其有效颜色。 默认的有效颜色是颜色。
>
> | 属性                          | 值                    |
> | ----------------------------- | --------------------- |
> | color                         | color                 |
> | elevatedColor                 | color                 |
> | highContrastColor             | highContrastColor     |
> | highContrastElevatedColor     | highContrastColor     |
> | darkColor                     | darkColor             |
> | darkElevatedColor             | darkColor             |
> | darkHighContrastColor         | darkHighContrastColor |
> | darkHighContrastElevatedColor | darkHighContrastColor |

### 根据黑暗模式自动切换颜色

```dart
CupertinoButton(
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
)
```

![A07E36B1-9A1D-4C62-9EB2-D4A2E32F0919-16991-00000A9EF9EDB675](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201101112449.gif)

> 必须在`CupertinoApp`内部才有效果
>
> `CupertinoDynamicColor.withBrightness`在`Text`不起作用(这个不知道是不是bug)

### 主题色

```dart
CupertinoButton(
  color: CupertinoTheme.of(context).primaryColor,
  child: const Text("登录"),
  onPressed: () {},
)
```

![19C39959-0883-481C-8A67-9F642C739EEA-16991-00000BD9B73A1691](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201101135529.gif)

### 通过 resolve 生成 CupertinoDynamicColor

```dart
CupertinoDynamicColor.resolve(CupertinoColors.darkBackgroundGray, context)
```

## MaterialStateColor

> 定义一个 Color，它也是一个 MaterialStateProperty。
>
> 此类的存在是为了使具有 Color 值属性的小部件也接受 MaterialStateProperty<Color> 值。材质状态颜色属性表示取决于小部件的“交互状态”的颜色。此状态表示为一组 MaterialState，如 MaterialState.pressed、MaterialState.focused 和 MaterialState.hovered。
>
> MaterialStateColor 只能与记录其支持的小部件一起使用，例如 TimePickerThemeData.dayPeriodColor。
>
> 要使用 MaterialStateColor，您可以：
>
> 创建 MaterialStateColor 的子类并实现抽象的 resolve 方法。
> 使用 MaterialStateColor.resolveWith 并传入一个回调，该回调将用于解析给定状态下的颜色。
> 如果 MaterialStateColor 用于不支持解析 MaterialStateProperty<Color>s 的属性或参数，则其默认颜色值将用于所有状态。
>
> 要定义 const MaterialStateColor，您需要扩展 MaterialStateColor 并覆盖其解析方法。您还需要为超级构造函数提供一个 defaultValue，以便我们可以在编译时知道它的默认颜色是什么。

### 自定义 TimeDatePicker Theme

```dart
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
```

```dart
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
```

![0B47839F-65F8-4983-88AD-373430CAA43E-16991-0000110240620F49](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201101352352.gif)

