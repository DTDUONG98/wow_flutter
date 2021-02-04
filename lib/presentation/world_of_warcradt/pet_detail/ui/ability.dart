import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/abilities/abilities.dart';
class ItemData extends StatelessWidget {
  final Abilities abilities;

  ItemData({this.abilities});


  @override
  Widget build(BuildContext context) {
    String name = 'Kill Kitten';
    int slot = abilities.slot;
    int requiredLevel = abilities.requiredLevel;
    return GestureDetector(
      child: Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bgr1.jpg"), fit: BoxFit.cover)
          ),
          child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                        right: new BorderSide(width: 2.0, color: Colors.white24))),
                    child: Image.network(requiredLevel <= 3 ? 'https://render-us.worldofwarcraft.com/icons/56/ability_druid_ferociousbite.jpg' :
                              requiredLevel <= 9 ? 'https://render-us.worldofwarcraft.com/icons/56/spell_shadow_soulleech_3.jpg' :
                              requiredLevel <= 15 ? 'https://render-us.worldofwarcraft.com/icons/56/spell_nature_cyclone.jpg' :
                              'https://render-us.worldofwarcraft.com/icons/56/spell_frost_arcticwinds.jpg'
                    ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('name: $name' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('slot: $slot' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('required level: $requiredLevel' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],)
          ),
        ),
      ),
    );
  }
}
