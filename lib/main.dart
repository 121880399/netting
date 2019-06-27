import 'package:flutter/material.dart';
import 'package:netting/common/style.dart';
import 'package:netting/pages/circle/circle.dart';
import 'package:netting/pages/home/home.dart';
import 'package:netting/pages/my/my.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '结网',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller;

  //当前第几页
  int currentPage = 0;

  String home = "assets/images/3.0x/home.png";
  String home_selected = "assets/images/3.0x/home_selected.png";

  String circle = "assets/images/3.0x/circle.png";
  String circle_selected = "assets/images/3.0x/circle_selected.png";

  String my = "assets/images/3.0x/my.png";
  String my_selected = "assets/images/3.0x/my_selected.png";

  @override
  void initState() {
    controller = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new PageView(
        controller: controller,
        onPageChanged: onPageChanged,
        children: <Widget>[
          new HomePage(),
          new CirclePage(),
          new MyPage(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            currentPage = 1;
            controller.jumpToPage(currentPage);
          });
        },
        backgroundColor: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              height: 20.0,
              child: currentPage == 1
                  ? Image.asset(
                      circle_selected,
                      height: 20.0,
                      width: 20.0,
                    )
                  : Image.asset(
                  circle,
                  height: 20.0,
                  width: 20.0),
            ),
            Text("圈子",
                style: currentPage == 1
                    ? TextStyle(
                    color: Constant.primaryTwoColor,
                    fontSize: Constant.minTextSize)
                    : TextStyle(fontSize: Constant.minTextSize,color: Color
                  (0xff3d3d3d)))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new Container(
        height: 60.0,
        child: new BottomAppBar(

            shape:  new CircularNotchedRectangle(),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      height:40.0,
                      child: new IconButton(
                        onPressed: () {
                          setState(() {
                            currentPage = 0;
                            controller.jumpToPage(currentPage);
                          });
                        },
                        icon: currentPage == 0
                            ? Image.asset(
                          home_selected,
                          height: 20.0,
                          width: 20.0,
                        )
                            : Image.asset(
                          home,
                          height: 20.0,
                          width: 20.0,
                        ),
                      ),
                    ),
                    new Text("首页",
                        style: currentPage == 0
                            ? TextStyle(
                            color: Constant.primaryTwoColor,
                            fontSize: Constant.minTextSize)
                            : TextStyle(fontSize: Constant.minTextSize,color: Color
                          (0xff3d3d3d))),
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      height:40.0,
                      child: new IconButton(
                        onPressed: () {
                          setState(() {
                            currentPage = 2;
                            controller.jumpToPage(currentPage);
                          });
                        },
                        icon: currentPage == 2
                            ? Image.asset(
                          my_selected,
                          height: 20.0,
                          width: 20.0,
                        )
                            : Image.asset(
                          my,
                          height: 20.0,
                          width: 20.0,
                        ),
                      ),
                    ),
                    new Text("我的",
                        style: currentPage == 2
                            ? TextStyle(
                            color: Constant.primaryTwoColor,
                            fontSize: Constant.minTextSize)
                            : TextStyle(fontSize: Constant.minTextSize,color: Color
                          (0xff3d3d3d))),
                  ],
                )
              ],
            )),
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this.currentPage = page;
    });
  }

  void onTap(int index) {
    controller.jumpToPage(index);
  }
}
