import 'package:NuBankClone/pages/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';
import '../../data.dart';
import 'app_bar_account_menus.dart';
import 'app_bar_data.dart';

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
    return (MediaQuery.of(context).size.height * 0.90 - 45) *
        _expandContainer.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 35),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InkWell(
              onTap: startAnimation,
              child: AppBarTitle(data["name"], _expanded)),
          Container(
            color: Theme.of(context).primaryColorDark,
            height: getContainerSize(),
            width: MediaQuery.of(context).size.width,
            child: OverflowBox(
              child: Wrap(
                children: [
                  AppBarData(data["agency"], data["account"]),
                  AccountMenus()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
