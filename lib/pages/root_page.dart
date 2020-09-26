import 'package:NuBankClone/pages/widgets/nubank_app_bar.dart';
import 'package:NuBankClone/pages/widgets/nubank_horizontal_menu.dart';
import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              children: [
                Container(height: MediaQuery.of(context).size.height * 0.75),
                HorizontalMenu()
              ],
            ),
            NubankAppBar(),
          ],
        ),
      ),
    );
  }
}
