import 'package:flutter/material.dart';

class AppBarMenuButton extends StatelessWidget {
  final Function onTap;
  final Icon icon;
  final String title;
  final String subtitle;

  AppBarMenuButton(
      {@required this.onTap,
      @required this.icon,
      @required this.title,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              myDivider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  if (subtitle != null)
                    Text(subtitle,
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                ],
              ),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_ios, size: 13, color: Colors.white)
            ],
          ),
        ));
  }

  Widget myDivider() {
    return Container(width: 10);
  }
}
