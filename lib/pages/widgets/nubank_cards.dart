import 'package:flutter/material.dart';
import '../../data.dart';
import 'bank_data.dart';
import 'credit_data.dart';
import 'nubank_rewards.dart';

class NubankCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.66,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SingleChildScrollView(
        child: Wrap(
          children: [
            CreditData(data["credit_bills"], data["credit_limit"],
                data["last_credit_punchase"]),
            Container(height: 20, color: Theme.of(context).primaryColorDark),
            BankData(data["balance"], data["last_debit_punchase"]),
            Container(height: 20, color: Theme.of(context).primaryColorDark),
            NubankRewards(),
          ],
        ),
      ),
    );
  }
}
