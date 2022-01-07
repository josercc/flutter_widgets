# EdgeInsetsGeometry

## EdgeInsets

四周的偏移量用于`Padding`。

![image-20220106173134383](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201061731408.png)

### EdgeInsets.all

所有的偏移量都固定为同一个值

#### 四周偏移 8 像素

```dart
EdgeInsets.all(8.0)
```

![image-20220107100447598](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071004627.png)

### EdgeInsets.symmetric

水平或者垂直方向偏移相同的值

#### 垂直方向偏移 8 像素

```dart
EdgeInsets.symmetric(vertical: 8.0)
```

![image-20220107100534160](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071005180.png)

#### 竖直方向偏移 8 像素

```dart
EdgeInsets.symmetric(horizontal: 8.0)
```

![image-20220107100758360](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071007383.png)

#### 四周偏移 8 像素

```dart
EdgeInsets.symmetric(horizontal: 8, vertical: 8)
```

![image-20220107100447598](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071009464.png)

### EdgeInsets.fromLTRB

分别为 Left Top Right Bottom 指定对应的偏移量

#### Left = 5 Top = 8 Right = 7 Bottom = 3

```dart
EdgeInsets.fromLTRB(5,8,7,3)
```

![image-20220107101249360](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071012380.png)

### EdgeInsets.only

可以针对单个或者多个设置偏移

#### Left = 8

```dart
EdgeInsets.only(left:8)
```

![image-20220107101349770](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071013797.png)

#### Right = 4 Bottom = 5

```dart
EdgeInsets.only(right:4, bottom:5)
```

![image-20220107101455359](https://gitee.com/joser_zhang/upic/raw/master/uPic/202201071014380.png)





