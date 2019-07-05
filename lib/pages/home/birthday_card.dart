import 'package:flutter/material.dart';
import 'package:netting/model/birthday_user_info_entity.dart';

class BirthdayCardWidget extends StatefulWidget {

  List<BirthdayUserInfoEntity> birthdayUserInfoEntity;

  BirthdayCardWidget(this.birthdayUserInfoEntity);

  @override
  _BirthdayCardWidgetState createState() => _BirthdayCardWidgetState();
}

class _BirthdayCardWidgetState extends State<BirthdayCardWidget> {
  @override
  Widget build(BuildContext context) {
    if(widget.birthdayUserInfoEntity == null){
      return _emptyView();
    }
    return Column(
      children: <Widget>[
        //手柄
        Container(
          height: 6.0,
          width: 45.0,
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 215, 218),
              borderRadius: BorderRadius.all(const Radius.circular(5.0))),
        ),
        ListView.builder(
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: <Widget>[
                  Container(
                    child: getItem(widget.birthdayUserInfoEntity[index]),
                    padding: const EdgeInsets.only(
                        left: 13.0,
                        right: 13.0),
                    color: Colors.white,
                  ),
                  Container(
                    height: 10.0,
                    color: Colors.transparent,
                  )
                ],
              );
            },
          itemCount: widget.birthdayUserInfoEntity.length,
          physics: const ClampingScrollPhysics(),
        ),
      ],
    );
  }

  //空布局
  Widget _emptyView(){
    return Text("近期暂无好友生日！",
      style: TextStyle(

      ),
    );
  }

  //每一个item
  Widget getItem(BirthdayUserInfoEntity entity){
    return Card(
      shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      color: Color(0xCCFFFFFF),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      child: new Padding(
        padding: new EdgeInsets.only(
            left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                new Container(
                  height: 90.0,
                  width: 90.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      placeholder: entity.avatarUrl,
                      image: entity.avatarUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                    child: Text(entity.userName),
                )
              ],
            ),
            Column(
              children: <Widget>[
                new Container(
                  child:Text(
                    entity.categoryName,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child:Text(
                    entity.birthday
                  ),
                )
              ],
            ),
            Text(
              entity.surplusDay
            )
          ],
        ),
      ),
    );
  }


}
