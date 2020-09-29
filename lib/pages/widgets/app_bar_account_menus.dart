import 'package:NuBankClone/pages/splash_page.dart';
import 'package:NuBankClone/pages/widgets/app_bar_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

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
            icon: Icon(FontAwesome5.coins, color: Colors.white),
            title: "Configurar conta",
          ),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Configurar Cartão");
            },
            icon: Icon(Icons.create_new_folder, color: Colors.white),
            title: "Configurar Cartão",
          ),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Pedir conta PJ");
            },
            icon: Icon(LineariconsFree.store, color: Colors.white),
            title: "Pedir conta PJ",
          ),
          myDivider(),
          AppBarMenuButton(
            onTap: () {
              print("Clicou em Configurações do app");
            },
            icon: Icon(Icons.smartphone, color: Colors.white),
            title: "Configurações do app",
          ),
          myDivider(),
          exitButton(context)
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

  Widget exitButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashNubank()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Container(
          margin: EdgeInsets.all(0.6),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
              child:
                  Text("SAIR DA CONTA", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
