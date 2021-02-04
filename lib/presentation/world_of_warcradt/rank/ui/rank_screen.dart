import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/entries/entries.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/rank/bloc/rank_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/item_rank.dart';
import 'components/list_rank_page.dart';
class RankScreen extends StatefulWidget {
  @override
  _RankScreenState createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  RankBloc _bloc;
  @override
  void initState() {
    _bloc = context.read();
    _bloc.add(LoadRankEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/bgr1.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('LEADER BOARD'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
          centerTitle: true,),
        body:
        BlocConsumer<RankBloc,RankState>
          (builder: (context,state){
          if(state is RankLoading)
          {
            return ColorLoaderRank();
          }
          else if( state is RankSuccessfullyState)
          {
            return ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: state.response.entries.length,
                itemBuilder: (BuildContext context, int index) {
                  Entries entries = state.response.entries[index];
                  return GestureDetector(
                      onTap: (){
                        print('next page');
                      },
                      child: ItemData(entries: entries,));
                });
          }
          else {
            return Center(child: Text('no data'),);

          }
        } , listener: (context,state){print('$state');}),),
    );
  }
}
