import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 层叠布局和Web中的绝对定位、Android中的Frame布局是相似的，子组件可以根据距父容器四个角的位置来确定自身的位置。
* 绝对定位允许子组件堆叠起来（按照代码中声明的顺序）。
* Flutter中使用Stack和Positioned这两个组件来配合实现绝对定位。
* Stack允许子组件堆叠，而Positioned用于根据Stack的四个角来确定子组件的位置。
* */

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Stack & Positioned'),),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );
  }
}