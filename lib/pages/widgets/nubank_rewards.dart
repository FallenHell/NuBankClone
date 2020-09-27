import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class NubankRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 30),
            Icon(
              LineariconsFree.gift,
              color: Colors.black,
            ),
            Container(height: 20),
            Text("Nubank Rewards",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 27)),
            Container(height: 10),
            Text(
              "Acumule pontos que nunca\nexpiram e troque por passagens\naéreas ou serviços que você\nrealmente usa.",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Container(height: 30),
            activeButton(context)
          ],
        ));
  }

  Widget activeButton(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Ativando");
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Container(
          margin: EdgeInsets.all(0.8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
              child: Text("ATIVE O SEU REWARDS",
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
