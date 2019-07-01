import 'package:flutter/material.dart';
import 'package:netting/common/style.dart';

class TipWidget extends StatefulWidget {

   String title;

   Color bgColor;

   Color textColor;

  TipWidget(this.title,this.textColor,this.bgColor);


  @override
  _TipWidgetState createState() => _TipWidgetState();
}

class _TipWidgetState extends State<TipWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 5.0,bottom: 5.0),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Text(widget.title,
        style: TextStyle(
          color: widget.textColor,
          fontSize: Constant.normalTextSize
        ),
      ),
    );
  }
}
