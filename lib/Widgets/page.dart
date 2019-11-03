import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('home page title'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.redAccent,
              child: Center(
                child: Text('1'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              width: 50,
              height: 50,
              color: Colors.orangeAccent,
            ),
            CupertinoButton(
              onPressed: () {
              },
              child: Text('Press'),
              color: CupertinoColors.activeBlue,
            )
          ],
        ),
      ),
    );
  }

}

/// Flutter提供了一套丰富、强大的基础组件，
/// 在基础组件库之上Flutter又提供了一套Material风格（Android默认的视觉风格）
/// 和一套Cupertino风格（iOS视觉风格）的组件库

/*
* 基础组件
* Text：该组件可让您创建一个带格式的文本。
* Row、 Column： 这些具有弹性空间的布局类Widget可让您在水平（Row）和垂直（Column）方向上创建灵活的布局。
* 其设计是基于Web开发中的Flexbox布局模型。
* Stack： 取代线性布局 (译者语：和Android中的FrameLayout相似)，Stack允许子 widget 堆叠，
* 你可以使用 Positioned 来定位他们相对于Stack的上下左右四条边的位置。
* Stacks是基于Web开发中的绝对定位（absolute positioning )布局模型设计的。
* Container： Container 可让您创建矩形视觉元素。container 可以装饰一个BoxDecoration,
*  如 background、一个边框、或者一个阴影。
* Container 也可以具有边距（margins）、填充(padding)和应用于其大小的约束(constraints)。
* 另外， Container可以使用矩阵在三维空间中对其进行变换。
* */