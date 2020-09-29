import 'package:flutter/material.dart';
import '../../data.dart';

class HorizontalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 100,
      color: Theme.of(context).primaryColorDark,
      child: ListView.separated(
          separatorBuilder: (context, index) => Container(
                width: 10,
                color: Theme.of(context).primaryColorDark,
              ),
          itemCount: data['menu_order'].length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _FeatureItem(
              data['menu_order'][index],
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
  final Function onClick;

  _FeatureItem(this.name, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onClick(),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Theme.of(context).primaryColor
            ),
            padding: EdgeInsets.all(8.0),
            width: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  _selectIcon(name),
                  color: Colors.white,
                  size: 32.0,
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                )
              ],
            )));
  }

  IconData _selectIcon (String icon){
    // TODO: COMPLEMENT SWITCH CASE TO HAVE EVERY ICON ON THE APPLICATION
    switch(icon.toLowerCase()){
      case "pix":
        return Icons.create_new_folder;
        break;
      case "doação":
        return Icons.developer_mode;
        break;
      case "pagar":
        return Icons.device_hub;
      default:
        return Icons.credit_card;
        
    }
  }
}


