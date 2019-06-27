import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image = "";
  List<Widget> listData;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Image.asset(
            image,
            height: 400.0,
          ),
          new ListView.builder(
            itemCount: listData == null ? 0 : listData.length,
            itemBuilder: (BuildContext context,int
          position){
            return _getView(context,position);
          },

          )
        ],
      ),
    );
  }

  Widget _getView(BuildContext context,int position){

  }
}
