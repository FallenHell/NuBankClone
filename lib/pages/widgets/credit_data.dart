import 'package:NuBankClone/pages/widgets/last_punchase.dart';
import 'package:flutter/material.dart';
import 'card_title.dart';

class CreditData extends StatelessWidget {
  final double creditBills;
  final double creditLimit;
  final Map<String, dynamic> lastPunchase;

  CreditData(this.creditBills, this.creditLimit, this.lastPunchase);

  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height * 0.50;
    double lastPunchaseHeight = MediaQuery.of(context).size.height * 0.15;
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
                    CardTitle("Cartão de crédito",
                        Icon(Icons.credit_card, color: Colors.grey[400])),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 30, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FATURA ATUAL",
                              style: TextStyle(color: Colors.lightBlue[500])),
                          Text("R\$ ${creditBills.toStringAsFixed(2)}",
                              style: TextStyle(
                                  color: Colors.lightBlue[500], fontSize: 28)),
                          Row(
                            children: [
                              Text("Limite Disponível",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold)),
                              Container(width: 8),
                              Text(
                                  "R\$ ${(creditLimit - creditBills).toStringAsFixed(2)}",
                                  style: TextStyle(
                                      color: Colors.green[400],
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                )),
                Container(
                  width: 10,
                  height: cardHeight - lastPunchaseHeight,
                  color: Colors.green[400],
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 10,
                    height: (cardHeight - lastPunchaseHeight) *
                        (creditBills / creditLimit),
                    color: Colors.lightBlue[500],
                  ),
                )
              ],
            )),
            LastPunchase(lastPunchase["place"], lastPunchase["value"])
          ],
        ));
  }
}
