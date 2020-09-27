import 'package:flutter/material.dart';

class AppBarData extends StatelessWidget {
  final String agency;
  final String account;

  AppBarData(this.agency, this.account);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Theme.of(context).primaryColorDark,
            child: Image.asset("images/qr_code.png", color: Colors.white),
          ),
          buildText("Banco", "260 - Nu Pagamentos S.A"),
          Container(height: 5),
          buildText("Agência", agency),
          Container(height: 5),
          buildText("Conta", account)
        ],
      ),
    );
  }

  Widget buildText(String firstText, String secondText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(firstText, style: TextStyle(color: Colors.white)),
        Container(width: 7),
        Text(secondText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
      ],
    );
  }
}
