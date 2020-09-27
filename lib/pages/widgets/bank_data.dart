import 'package:NuBankClone/pages/widgets/last_punchase.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'card_title.dart';

class BankData extends StatefulWidget {
  final double balance;
  final Map<String, dynamic> lastPunchase;

  BankData(this.balance, this.lastPunchase);

  @override
  _BankDataState createState() => _BankDataState();
}

class _BankDataState extends State<BankData> {
  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height * 0.50;
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: cardHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    CardTitle("Conta",
                        Icon(FontAwesome5.coins, color: Colors.grey[400]),
                        eyeIcon: true, eyeFunction: () {
                      setState(() {
                        _hide = !_hide;
                      });
                    }),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 30, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Saldo disponível",
                              style: TextStyle(color: Colors.black38)),
                          _hide
                              ? Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 30,
                                  color: Colors.grey[200])
                              : Text("R\$ ${widget.balance.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ))
                  ],
                )),
              ],
            )),
            LastPunchase(
                widget.lastPunchase["place"], widget.lastPunchase["value"])
          ],
        ));
  }
}
