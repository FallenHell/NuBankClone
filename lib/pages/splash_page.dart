import 'package:NuBankClone/pages/root_page.dart';
import 'package:flutter/material.dart';
import '../data.dart';

class SplashNubank extends StatefulWidget {
  @override
  _SplashNubankState createState() => _SplashNubankState();
}

class _SplashNubankState extends State<SplashNubank>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _expandName;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        value: 0, vsync: this, duration: Duration(milliseconds: 350));
    _expandName = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        Future.delayed(Duration(milliseconds: 500), () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => RootPage()));
        });
    });
    _controller.addListener(() {
      setState(() {});
    });
    Future.delayed(Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset("images/logo.png", color: Colors.white),
              ),
              SizedBox(width: 15),
              SizedBox(
                width: _expandName.value * 100,
                child: Text(
                  data["name"],
                  maxLines: 1,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  overflow: TextOverflow.clip,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
