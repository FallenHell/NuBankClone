import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final Icon icon;
  final String title;
  final bool eyeIcon;
  final Function eyeFunction;

  CardTitle(this.title, this.icon, {this.eyeIcon = false, this.eyeFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        children: [
          Container(width: 20),
          icon,
          Container(width: 20),
          Expanded(child: Text(title, style: TextStyle(color: Colors.black54))),
          if (eyeIcon)
            InkWell(
              onTap: eyeFunction,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(Icons.remove_red_eye, color: Colors.black38),
              ),
            )
        ],
      ),
    );
  }
}
