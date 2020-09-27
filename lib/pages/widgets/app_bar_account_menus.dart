import 'package:NuBankClone/pages/widgets/app_bar_menu_button.dart';
import 'package:flutter/material.dart';

class AccountMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Wrap(
        children: [
          myDivider(),
          AppBarMenuButton(
              onTap: () {
                print("Clicou em me ajuda");
              },
              icon: Icon(Icons.help_outline, color: Colors.white),
              title: "Me ajuda"),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Perfil");
            },
            icon: Icon(Icons.person_outline, color: Colors.white),
            title: "Perfil",
            subtitle: "Nome de preferência, telefone, e-mail",
          ),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Configurar Conta");
            },
            icon: Icon(Icons.account_balance, color: Colors.white),
            title: "Configurar conta",
          ),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Configurar Cartão");
            },
            icon: Icon(Icons.credit_card_outlined, color: Colors.white),
            title: "Configurar Cartão",
          )
        ],
      ),
    );
  }

  Widget myDivider() {
    return Container(
      color: Colors.white,
      height: 0.4,
    );
  }
}
