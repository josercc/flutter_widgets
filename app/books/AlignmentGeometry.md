# AlignmentGeometry

对齐的基类，可以使用`Alignment`和`AlignmentDirectional`。

## Alignment

![image-20220106155358154](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061553178.png)

> `Alignment`被用于`Align`布局。

```dart
class AlignPage extends StatefulWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends BasePage<AlignPage, AlignPageViewModel> {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            color: Colors.green,
            child: Consumer<AlignPageViewModel>(
              builder: (context, value, child) {
                return Align(
                  alignment: Alignment(value.x, value.y),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.purple,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("X:"),
              Selector<AlignPageViewModel, double>(
                selector: (p0, p1) => p1.x,
                builder: (context, value, child) {
                  return Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..x = value
                        ..update();
                    },
                  );
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Y:"),
              Selector<AlignPageViewModel, double>(
                selector: (p0, p1) => p1.y,
                builder: (context, value, child) {
                  return Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..y = value
                        ..update();
                    },
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  AlignPageViewModel createViewModel() {
    return AlignPageViewModel();
  }
}

```

![3567E0EB-D529-49F1-8489-DBB1E7D62566-4203-000018BDAD5E29F8](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061653462.gif)

### FractionalOffset(废弃被 Alignment取代)

> 是为了支持不支持`Alignment`的低版本

![image-20220106163232311](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061632338.png)



```dart
class FractionalOffsetPage extends StatefulWidget {
  const FractionalOffsetPage({Key? key}) : super(key: key);

  @override
  _FractionalOffsetPageState createState() => _FractionalOffsetPageState();
}

class _FractionalOffsetPageState
    extends BasePage<FractionalOffsetPage, FractionalOffsetPageViewModel> {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            color: Colors.green,
            child: Consumer<FractionalOffsetPageViewModel>(
              builder: (context, value, child) {
                return Align(
                  alignment: FractionalOffset(value.x, value.y),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.purple,
                  ),
                );
              },
            ),
          ),
          const Text("X:"),
          Selector<FractionalOffsetPageViewModel, double>(
            selector: (p0, p1) => p1.x,
            builder: (context, value, child) {
              return Row(
                children: [
                  Text("X:${value.toStringAsFixed(1)}"),
                  const Spacer(),
                  const Text("-2"),
                  Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..x = value
                        ..update();
                    },
                  ),
                  const Text("2"),
                ],
              );
            },
          ),
          const Text("Y:"),
          Selector<FractionalOffsetPageViewModel, double>(
            selector: (p0, p1) => p1.y,
            builder: (context, value, child) {
              return Row(
                children: [
                  Text("Y:${value.toStringAsFixed(1)}"),
                  const Spacer(),
                  const Text("-2"),
                  Slider(
                    value: value,
                    min: -2,
                    max: 2,
                    onChanged: (value) {
                      viewModel
                        ..y = value
                        ..update();
                    },
                  ),
                  const Text("2"),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  FractionalOffsetPageViewModel createViewModel() {
    return FractionalOffsetPageViewModel();
  }
}

```

![3392B0DA-0943-48E5-AF57-ED518C55F69A-4203-0000189895B0D1B9](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061649646.gif)

## AlignmentDirectional

当前书写方向的偏移量

### LTR书写

![image-20220106170450570](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061704608.png)

### RTL书写

![image-20220106170619025](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061706063.png)

