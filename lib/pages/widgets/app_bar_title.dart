import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String name;
  final bool expanded;

  AppBarTitle(this.name, this.expanded);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.10,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image.asset("images/logo.png", color: Colors.white),
              ),
              SizedBox(width: 15),
              SizedBox(
                child: Text(
                  name,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          Icon(expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white)
        ],
      ),
    );
  }
}
