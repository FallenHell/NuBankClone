import 'package:flutter/material.dart';

class HorizontalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.white,
    );
  }
}
