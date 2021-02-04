import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/entries/entries.dart';
class ItemData extends StatelessWidget {
  final Entries entries;

  ItemData({this.entries});


  @override
  Widget build(BuildContext context) {
    int rank = entries.rank;
    String name = entries.character.characterName;
    String slug = entries.character.realm.realmSlug;
    int ratting = entries.rating;
    String faction = entries.faction.factionType;
    int played = entries.seasonMatchStatics.played;
    int won = entries.seasonMatchStatics.won;
    int lost = entries.seasonMatchStatics.lost;
    return GestureDetector(
      child: Card(
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.white30,
              width: 2.0,
            ),
          ),
          elevation: 0.5,
          color: Colors.transparent,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(),
          child:  ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right: new BorderSide(width: 2.0, color: Colors.white24))),
                child: Image.asset( rank == 1 ? 'assets/images/no1.png':
                                    rank == 2 ? 'assets/images/no2.png' :
                                    rank == 3 ? 'assets/images/no3.png' :
                                    'assets/images/ranklogo.png'
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'name : $name    Rank : $rank',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    'Ratting : $ratting',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'slug : $slug ',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'faction : $faction ',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Played : $played',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'won : $won  lost : $lost',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                ],
              )
        ),)
      ),
    );
  }


}
