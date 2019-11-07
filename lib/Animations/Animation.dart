import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {

  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Animation<double> animation = listenable;
    return new Center(
      child: Image.asset("images/WechatIMG10.jpeg",
          width: animation.value,
          height: animation.value
      ),
    );
  }

}


class ScaleAnimationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScaleAnimationRouteState();
  }
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween(
      begin: 0.0,
      end: 300.0
    ).animate(controller);

    //启动动画(正向执行)
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WechatIMG10'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('tap image');
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("WechatIMG10_Detail"),
                      ),
                      body: HeroAnimationRouteB(),
                    ),
                  );
                }
              ));
            },
            child: Hero(
              tag: 'WechatIMG10',
              child: ClipOval(child: Image.asset("images/WechatIMG10.jpeg", width: 30, height: 30,),)
            )
          )

        ],
      ),
      body: Center(
          child: AnimatedImage(animation: animation,)
      ),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "WechatIMG10", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("images/WechatIMG10.jpeg"),
      ),
    );
  }
}
