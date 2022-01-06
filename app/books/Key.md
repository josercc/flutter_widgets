# Key

![image-20220104180056650](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201041800728.png)

- `Key`是`Widget` `Element` `SemanticsNode`  标识符
- 相同父级`Element`必须唯一
- 必须使用`LocalKey` `GlobalKey`子类
- `StateslessWidget`不需要`Key`

## LocalKey

- 相同父级`Element`必须唯一

### ObjectKey

- 用对象生成唯一的 Key

### UniqueKey

- 用自身作为唯一的 Key

### ValueKey

- 使用特定类型作为唯一的 Key

#### PageStorageKey

- 用于被销毁的时候将状态保存起来，下次重建恢复。

## GlobalKey

- 全局必须唯一 

- 不应该每次重建都创建新的 GlobalKey

- 使用GlobalKey代价很高

  优先使用下面的 Key

  | Key       |      |      |
  | --------- | ---- | ---- |
  | ValueKey  |      |      |
  | ObjectKey |      |      |
  | UniqueKey |      |      |

- GlobalKey可以拿到关联对象的 BuildContext,对于 StatefulWidget 还可以拿到 State

![image-20220105083715196](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201050837237.png)

### GlobalObjectKey

- 用关联对象作为全局 Key

- 对象必须私有保持唯一

- 为了保持私有创建 GlobalObjectKey 子类

  ```dart
  class _MyKey extends GlobalObjectKey {
    const _MyKey(Object value) : super(value);
  }
  ```

### LabeledGlobalKey

- 带有调试标签的 Key

## Example

### StatelessWidget 不需要 Key

> 我们使用`StatelessWidget`创建两个随机颜色的试图，点击按钮交换位置

```dart
class _StatelessColorView extends StatelessWidget {
  ...
  /// 随机颜色
  final Color _color = RandomColor().randomColor();
  @override
  Widget build(BuildContext context) {
    return Container(
      ...
      color: _color,
    );
  }
}
```

```dart
...
class _StatelessPageState
    extends ListTitlePage<StatelessPage, StatelessPageViewModel> {
  final List<Widget> _colorView = [
    _StatelessColorView(),
    _StatelessColorView(),
  ];

  ...
  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      Row(
        ...
        children: _colorView,
      ),
      TextButton(
          onPressed: () {
            /// 点击按钮交换
            _colorView.insert(0, _colorView.removeAt(1));
            setState(() {});
          },
          ...
    ];
  }
}
```

![84FEFDE4-8D9E-457E-B2D4-EE101A651933-31012-000011C4AED1688A](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051448756.gif)

#### 分析原理

##### 最开始的树形结构

![image-20220106101410976](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061014005.png)

##### 交换之后的树形结构

![image-20220106101505458](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061015483.png)

##### 左侧 Widget

> oldWidget = StatelessWidget A
>
> newWidget = StatelessWidget B
>
> oldWidget.runtimeType(_StatelessColorView) = newWidget.runtimeType(_StatelessColorView)
>
> oldWidget.key(null) == newWidget.key(null)

此时`oldWidget.runtimeType == newWidget.runtimeType && oldWidget.key == newWidget.key` 按照第一张图更新逻辑，需要执行`Element.update`。

![image-20220105153644722](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051536765.png)



看到最后调用的是`newWidget.build`方法，也就是`(StatelessWidget B).build`的方法。`StatelessWidget B`的颜色为红色，所以第一个视图的颜色变成了红色，反之第二个视图的颜色变成了蓝色。

### StatefulWidget 需要 Key

> 我们使用`StatefulWidget`实现上面的功能

#### 不使用 Key

```dart
class _StatefulColorView extends StatefulWidget {
  ...
}

class __StatefulColorViewState extends State<_StatefulColorView> {
  final Color _color = RandomColor().randomColor();
  @override
  Widget build(BuildContext context) {
    return Container(
      ...
      color: _color,
    );
  }
}
```

```dart
...
class _StatefulPageState
    extends ListTitlePage<StatefulPage, StatefulPageViewModel> {
  final List<Widget> _colorViews = [
    const _StatefulColorView(),
    const _StatefulColorView(),
  ];

 ...
  @override
  List<Widget> makeContentWidgets(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _colorViews,
      ),
      TextButton(
        onPressed: () {
          setState(() {
            _colorViews.insert(0, _colorViews.removeLast());
          });
        },
       ...
      ),
    ];
  }
```

![1FD969A3-E96C-444C-98B0-2D0A5FAB1B34-31012-0000152721D38E2F](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051550156.gif)

此时点击交换视图，视图是没做任何更新的。

##### 分析原因

###### 初始状态

![image-20220106101628935](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061016963.png)

###### 变化状态

![image-20220106101705397](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061017426.png)

> 左侧 Widget
>
> `oldWidget == _StatefulColorView A`
>
> `newWidget == _StatefulColorView B`
>
> `newWidget.runtimeType(_StatefulColorView) == oldWidget.runtimeType(_StatefulColorView)`
>
> `newWidget.key(null) == oldWidget.key(null)`

此时`newWidget.runtimeType == oldWidget.runtimeType && newWidget.key == oldWidget.key`，则调用`Element.update`方法。

![image-20220105161856777](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051618819.png)

此时最终调用的变成了`State.build`方法。

![image-20220105162343660](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051623700.png)

虽然`StatefulWidget A`和`StatefulWidget B`交换了位置，但是他们创建的`State`依然存在树对应的位置，最终调用`State.build()`方法时候，左侧依然显示绿色。

为了验证，我们修改一些代码将，获取的颜色从`StatefulWidget`中获取。

```dart
class _StatefulColorView extends StatefulWidget {
  final Color _color = RandomColor().randomColor();
  ...
}

class __StatefulColorViewState extends State<_StatefulColorView> {
  ...
  @override
  Widget build(BuildContext context) {
    return Container(
      ...
      color: widget._color,
    );
  }
}
```

![FB0B3CA6-8D90-4D42-8B03-70B48448B04B-31012-00001763393B3D5B](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051631407.gif)

此时效果也实现了，看来对于直接获取`Widget`的属性进行渲染，是不会因为持有`State`而影响的。

#### 使用 Key

```dart
class _StatefulPageState
    extends ListTitlePage<StatefulPage, StatefulPageViewModel> {
  final List<Widget> _colorViews = [
    _StatefulColorView(key: UniqueKey()),
    _StatefulColorView(key: UniqueKey()),
  ];

  ...
}
```

![24BE95E8-8C3A-46AC-B96D-7C17165B1CBE-31012-00001809ED7DE1D6](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051643843.gif)

我们使用`UniqueKey`之后，也是可以的。

> `newWidget == _StatefulColorView B`
>
> `oldWidget == _StatefulColorView A`
>
> `newWidget.runtimeType == _StatefulColorView`
>
> `oldWidget.runtimeType == _StatefulColorView`
>
> `newWidget.key == UniqueKey A`
>
> `oldWidget.key == UniqueKey B`

此时`newWidget.runtimeType == oldWidget.runtimeType && newWidget.key != oldWidget.key`,因此替换掉旧的`Widget`。

![image-20220105165338424](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051653474.png)

#### 最外层使用 StatelessWidget 包裹

```dart
class _StatefulPageState
    extends ListTitlePage<StatefulPage, StatefulPageViewModel> {
  final List<Widget> _colorViews = [
    Container(child: _StatefulColorView(key: UniqueKey())),
    Container(child: _StatefulColorView(key: UniqueKey())),
  ];

  ...
}
```

![C00C6FD5-F7DB-46F2-A1E3-A7170D575440-31012-000018D95920D116](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201051658755.gif)

我们看到我们的`State`重新生成了，因为随机颜色发生了变化。为了解决这个问题，我们需要将`Key`添加变更根`Widget`。

```dart
class _StatefulPageState
    extends ListTitlePage<StatefulPage, StatefulPageViewModel> {
  final List<Widget> _colorViews = [
    Container(key: UniqueKey(), child: _StatefulColorView(key: UniqueKey())),
    Container(key: UniqueKey(), child: _StatefulColorView(key: UniqueKey())),
  ];

  ...
}
```

### 使用 ValueKey 解决表格拖动问题

```dart
...
class _TodoPageState extends ListTitlePage<TodoPage, TodoPageViewModel> {
  final List<String> todos = ["Todo1", "Todo2", "Todo3", "Todo4", "Todo5"];

  ...
  @override
  Widget buildBody(BuildContext context) {
    return ReorderableListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        String text = todos[index];
        return Container(
          key: ValueKey(text),
          ...
        );
      },
      onReorder: (oldIndex, newIndex) {
        todos.insert(newIndex, todos[oldIndex]);
        if (oldIndex > newIndex) {
          todos.removeAt(oldIndex + 1);
        } else {
          todos.removeAt(oldIndex);
        }
      },
    );
  }
  ...
}

```

![5056B109-3ED3-4842-81FD-E9ADBFB1A51B-4203-000003CA80ED90A4](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201060901208.gif)

### 使用 ObjectKey 解决生日问题

```dart
class UserBirthdayModel {
  /// 姓名
  final String name;

  /// 生日
  final String birthday;

  UserBirthdayModel(this.name, this.birthday);
}
```

因为不同人是允许`名字`和`生日`相同的，所以不能拿`name`和`birthday`作为唯一的`Key`，刚才的`ValueKey`已经能用了，这个时候就需要`人`实体作为唯一的`Key`，这个时候就需要用到`ObjectKey`。

```dart
...
class _UserBirthdayPageState
    extends ListTitlePage<UserBirthdayPage, UserBirthdayPageViewModel> {
  final List<UserBirthdayModel> users = [
    UserBirthdayModel("张一", "1989年8月8日"),
    UserBirthdayModel("李二", "1989年8月8日"),
    UserBirthdayModel("张一", "2021年10月10日"),
    UserBirthdayModel("王三", "2022年3月4日"),
  ];

  ...
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

  ...
}

```

![84417EE8-29FC-4F9D-B878-4FE0C7DA7B22-4203-000005294597292E](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201060926850.gif)

### 使用 PageStorageKey 保存页面状态

#### 未使用 PageStorageKey

```dart
...
class _ScrollHoldPageState
    extends ListTitlePage<ScrollHoldPage, ScrollHoldPageViewModel> {
  @override
  ...
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        ...
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(index.toString()),
            ),
          ),
        ]),
      ),
    );
  }
}

```

![CD466531-C1D3-43BA-AEB3-E92EC026C022-4203-0000091952F04A22](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061038499.gif)

#### 使用 PageStorageKey

```swift
class _ScrollHoldPageState
    extends ListTitlePage<ScrollHoldPage, ScrollHoldPageViewModel> {
  ...
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     ...
      child: Scaffold(
        ...
        body: TabBarView(children: [
          ListView.builder(
            key: const PageStorageKey(0),
            ...
          ),
          ListView.builder(
            key: const PageStorageKey(1),
           	...
          ),
          ListView.builder(
            key: const PageStorageKey(2),
            ...
          ),
        ]),
      ),
    );
  }
}

```

![086B773E-DA84-409D-8A13-DD16F3B2A050-4203-0000097F22C25116](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061046371.gif)

### 使用 GlobalKey 获取 State

```dart
...
class _GlobalKeyStatePageState extends State<GlobalKeyStatePage> {
  final GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("使用 GlobalKey 获取 State"),
      ),
      body: Center(
        child: Column(
          children: [
            _CountView(
              key: _globalKey,
            ),
            TextButton(
              onPressed: () {
                __CountViewState? state =
                    _globalKey.currentState as __CountViewState;
                state.addCount();
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}

class _CountView extends StatefulWidget {
  const _CountView({Key? key}) : super(key: key);

  @override
  __CountViewState createState() => __CountViewState();
}

class __CountViewState extends State<_CountView> {
  int _count = 0;
  void addCount() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_count.toString()),
    );
  }
}

```

![90A0925A-D844-4410-AEAB-FB45E8AADF96-4203-00000A6837D95B7F](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061102817.gif)

### GlobalKey 获取组件的大小和位置

> 假设我们有一个这样的需求，我们想在`View1`的上方放一个`View2`，`View2`的大小为`View1`的一半，`View2`的中心是`View`右上角。

![image-20220106111343722](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061113787.png)

![image-20220106140609693](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061406759.png)

```dart
class GlobalKeyPositionSizePage extends StatefulWidget {
  const GlobalKeyPositionSizePage({Key? key}) : super(key: key);

  @override
  _GlobalKeyPositionSizePageState createState() =>
      _GlobalKeyPositionSizePageState();
}

class _GlobalKeyPositionSizePageState extends BasePage<
    GlobalKeyPositionSizePage, GlobalKeyPositionSizePageViewModel> {
  final GlobalKey _globalKeyA = GlobalKey();

  String _randomString = randomString(20);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      BuildContext? context = _globalKeyA.currentContext;
      if (context == null) return;
      RenderBox? box = context.findRenderObject() as RenderBox?;
      if (box == null) return;
      Size size = box.size;
      Offset offset = box.localToGlobal(Offset.zero);
      GlobalKeyPositionSizePageViewModel viewModel = context.read();
      viewModel
        ..size = size
        ..offset = offset
        ..update();
    });
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Selector<GlobalKeyPositionSizePageViewModel, _Frame>(
            selector: (p0, p1) => _Frame(p1.offset, p1.size),
            builder: (context, value, child) {
              return Container(
                color: Colors.black,
                width: value.size.width + value.size.width / 4,
                height: value.size.height + value.size.height / 4,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        key: _globalKeyA,
                        color: Colors.green,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          _randomString,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        color: Colors.purple,
                        width: value.size.width / 2,
                        height: value.size.height / 2,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _randomString = randomString(20);
                });
              },
              child: const Text("随机字符"))
        ],
      ),
    );
  }

  @override
  GlobalKeyPositionSizePageViewModel createViewModel() {
    return GlobalKeyPositionSizePageViewModel();
  }
}

class _Frame {
  final Offset offset;
  final Size size;
  _Frame(this.offset, this.size);
}

```

![image-20220106143232188](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061432262.png)

