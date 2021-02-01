import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/index_pet/index_pet.dart';
class ItemData extends StatelessWidget {
  final IndexPet indexPet;

  ItemData({this.indexPet});


  @override
  Widget build(BuildContext context) {
    String name = indexPet.name;
    return GestureDetector(
      child: Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black54),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 2.0, color: Colors.white24))),
              child: Image.asset('assets/images/petlogo.jpg'),
            ),
            title: Text('$name' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)),
          ),
      ),
    );
  }


}
