import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

class LastPunchase extends StatelessWidget {
  final String where;
  final double value;

  LastPunchase(this.where, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      color: Colors.grey[200],
      child: Row(children: [
        Container(width: 20),
        Icon(RpgAwesome.knife_fork, color: Colors.black26),
        Container(width: 20),
        Expanded(
            child: Text(
          "Compra mais rescente em $where\n*$where no valor de R\$ $value quinta",
          style: TextStyle(color: Colors.black38, fontSize: 12),
        )),
        Container(
          margin: EdgeInsets.only(right: 30),
          child: Icon(Icons.arrow_forward_ios, size: 13, color: Colors.black38),
        )
      ]),
    );
  }
}
