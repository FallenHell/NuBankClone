import 'package:flutter/material.dart';
import '../../data.dart';

class HorizontalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: ListView.separated(
          separatorBuilder: (context, index) => Container(
                width: 10,
                color: Theme.of(context).primaryColorDark,
              ),
          itemCount: data['menu_order'].length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _FeatureItem(
              data['menu_order'][index], Icons.person_add,
              onClick: null)
          // _FeatureItem('Indicar Amigos', Icons.person_add, onClick: null),
          // _FeatureItem('Pix', Icons.monetization_on, onClick: null),
          // _FeatureItem('Pagar', Icons.payment, onClick: null),
          // _FeatureItem('Transferir', FontAwesome5.comment_dollar,
          //     onClick: null),
          // _FeatureItem('Depositar', FontAwesome5.comments_dollar, onClick: null)
          //],
          ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  _FeatureItem(this.name, this.icon, {@required this.onClick})
      : assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
            onTap: () => onClick(),
            child: Container(
                padding: EdgeInsets.all(8.0),
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 32.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    )
                  ],
                ))));
  }
}
