import 'package:flutter/material.dart';
import 'package:netting/common/style.dart';
import 'package:netting/widget/tip_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image = "http://www.xzw.com/static/public/images/fortune/image/11.gif";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Stack(
              children: <Widget>[
                //贝塞尔曲线
                new ClipPath(
                  clipper: BgClipper(),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: 200.0,
                  ),
                ),
                header(),
              ],
            ),
            baseCharacterTip(),
            baseCharacter(),
            specificCharacterTip(),
            specificCharacter(),
            workStyleTip(),
            workStyle(),
            defectTip(),
            defect(),
            summaryTip(),
            summary(),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  ///头部卡片信息
  Widget header() {
    return Container(
      child: new Card(
        elevation: 5.0,
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        color: Color(0xCCFFFFFF),
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
        child: new Padding(
          padding: new EdgeInsets.only(
              left: 20.0, top: 20.0, right: 10.0, bottom: 20.0),
          child: Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //星座头像
                      new Container(
                        height: 90.0,
                        width: 90.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xcc7fbae0),
                          child: FadeInImage.assetNetwork(
                            placeholder: image,
                            image: image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Text(
                        "水瓶座",
                        style: TextStyle(
                            fontSize: Constant.lagerTextSize,
                            color: Color(0xff987bd0)),
                      ),
                      new SizedBox(
                        height: 2.0,
                      ),
                      new Text(
                        "1月20日-2月18日",
                        style: TextStyle(
                            fontSize: Constant.minTextSize,
                            color: Color(0xff999999)),
                      )
                    ],
                  ),
                  new SizedBox(
                    width: 25.0,
                  ),
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "星座特点：自由博爱",
                          style: TextStyle(
                              fontSize: Constant.smallTextSize,
                              color: Color(0xff999999)),
                        ),
                        new SizedBox(
                          height: 8.0,
                        ),
                        new Text(
                          "四象属性：风",
                          style: TextStyle(
                              fontSize: Constant.smallTextSize,
                              color: Color(0xff999999)),
                        ),
                        new SizedBox(
                          height: 8.0,
                        ),
                        new Text(
                          "最大特征：求知",
                          style: TextStyle(
                              fontSize: Constant.smallTextSize,
                              color: Color(0xff999999)),
                        ),
                        new SizedBox(
                          height: 8.0,
                        ),
                        new Text(
                          "幸运颜色：古铜色",
                          style: TextStyle(
                              fontSize: Constant.smallTextSize,
                              color: Color(0xff999999)),
                        ),
                        new SizedBox(
                          height: 8.0,
                        ),
                        new Text(
                          "吉祥饰物：黑珍珠",
                          style: TextStyle(
                              fontSize: Constant.smallTextSize,
                              color: Color(0xff999999)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              new Divider(
                height: 15.0,
                indent: 0.0,
                color: Color(0xff999999),
              ),
              new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Text(
                        "表现：",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      new Text(
                        "创新、时尚",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        "优点：",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      new Text(
                        "求新求变，好奇心强，博爱，有远见。",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        "缺点：",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      new Text(
                        "多变，叛逆，倔强，自我中心。",
                        style: TextStyle(
                          fontSize: Constant.smallTextSize,
                          color: Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ///基本性格标签
  Widget baseCharacterTip() {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: new TipWidget("基本性格", Color(0xffffffff), Color(0xffbf9df7)));
  }

  ///基本性格
  Widget baseCharacter() {
    return Container(
        child: Card(
      shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      color: Color(0xCCFFFFFF),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      child: new Padding(
        padding: new EdgeInsets.only(
            left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
        child: Text(
          "太阳位于巨蟹座的人，亲切有礼，感情丰富、细腻，有很强的感受力，具有母性的博爱之心，属于居家派的。但情绪起伏，有逃避倾向。",
          style: TextStyle(
            color: Color(0xff999999),
            fontSize: Constant.smallTextSize,
          ),
        ),
      ),
    ));
  }

  ///具体性格标签
  Widget specificCharacterTip() {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: new TipWidget("具体特质", Color(0xffffffff), Color(0xffbf9df7)));
  }

  ///具体性格
  Widget specificCharacter() {
    return Container(
        child: Card(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          color: Color(0xCCFFFFFF),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: new Padding(
            padding: new EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Text(
              "巨蟹座是黄道宫上的第四个星座，主宰星为月亮。心思细密，感受力非常强，保护他人的意识强烈，家庭观念浓厚，有强烈的责任心及牺牲奉献精神。太阳落在巨蟹座的人擅长持家，喜欢安定祥和的家庭氛围，对长辈孝顺，对兄弟姐妹、朋友非常友善，努力创造你想要的和谐与美满。当然，你的自我保护的意识也非常强烈，一点点的风吹草动都有可能让你心潮起伏，当他人侵犯了你内心的那块净土时，你也会伸出钳子示威。",
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: Constant.smallTextSize,
              ),
            ),
          ),
        ));
  }

  ///行事风格标签
  Widget workStyleTip() {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: new TipWidget("行事风格", Color(0xffffffff), Color(0xffbf9df7)));
  }

  ///行事风格
  Widget workStyle() {
    return Container(
        child: Card(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          color: Color(0xCCFFFFFF),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: new Padding(
            padding: new EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Text(
              "你善于与人共事，凡事喜欢与人分享，行事谨慎，有自己的想法和追求，但不轻易表现出来，更希望他人能感受到你的内心想法。害怕竞争激烈的环境，在和乐的气氛中做事，才能让你感到安心，也能激发出你的潜能。",
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: Constant.smallTextSize,
              ),
            ),
          ),
        ));
  }

  ///个性盲点标签
  Widget defectTip() {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: new TipWidget("个性盲点", Color(0xffffffff), Color(0xffbf9df7)));
  }

  ///个性盲点
  Widget defect() {
    return Container(
        child: Card(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          color: Color(0xCCFFFFFF),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: new Padding(
            padding: new EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Text(
              "自信、动力不足，遇到挫折易打退堂鼓；心灵较脆弱，经不起打击，情绪低落，常沉迷于自我设想的悲伤里；有逃避心理，害怕面对现实，情绪易跟着他人起舞，过度保护自己。应加强信心，多自我鼓励，卸下心中的包袱。",
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: Constant.smallTextSize,
              ),
            ),
          ),
        ));
  }

  ///总结标签
  Widget summaryTip() {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: new TipWidget("总结", Color(0xffffffff), Color(0xffbf9df7)));
  }

  ///总结
  Widget summary() {
    return Container(
        child: Card(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          color: Color(0xCCFFFFFF),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: new Padding(
            padding: new EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Text(
              "巨蟹座的情绪容易敏感，也缺乏安全感，容易对一件事情上心，做事情有坚持到底的毅力，为人重情重义，对朋友、家人都特别忠实，巨蟹男是一等一的好男人，顾家爱家人，巨蟹女充满母性光环，非常有爱心。",
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: Constant.smallTextSize,
              ),
            ),
          ),
        ));
  }
}

///贝塞尔曲线
class BgClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height - 20);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 4 * 3, size.height - 80);
    var secondEndPoint = Offset(size.width, size.height - 40);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
