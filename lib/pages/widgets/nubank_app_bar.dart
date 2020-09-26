import 'package:NuBankClone/pages/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';
import '../../data.dart';

class NubankAppBar extends StatefulWidget {
  @override
  _NubankAppBarState createState() => _NubankAppBarState();
}

class _NubankAppBarState extends State<NubankAppBar>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _expandContainer;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 200), vsync: this, value: 0);
    _animationController.addListener(() {
      setState(() {});
    });
    _expandContainer =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  void startAnimation() {
    if (_animationController.value == 0) {
      _animationController.forward();
      _expanded = true;
    } else {
      _animationController.reverse();
      _expanded = false;
    }
  }

  double getContainerSize() {
    if (_expandContainer.value == 0)
      return MediaQuery.of(context).size.height * 0.18;
    else
      return (MediaQuery.of(context).size.height * 0.18) +
          (MediaQuery.of(context).size.height * 0.82) * _expandContainer.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          border: Border(bottom: BorderSide(color: Colors.white))),
      padding: EdgeInsets.only(top: 45),
      width: MediaQuery.of(context).size.width,
      height: getContainerSize(),
      child: Column(
        children: [
          GestureDetector(
              onTap: startAnimation,
              child: AppBarTitle(data["name"], _expanded)),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
