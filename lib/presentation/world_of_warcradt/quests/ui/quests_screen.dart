import 'package:flutter/material.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/quests/bloc/quests_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class QuestScreen extends StatefulWidget {
  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUEST SEARCH'),
      ),
      body: BlocConsumer<QuestsBloc, QuestsState>(
          builder: (context, state) {
            if(state is QuestsLoading){
              return Center(child: Text('loading'),);
            }else if(state is QuestsSuccess){
              return Center(child: Text('OK'),);
            } else {
              return Center(child: Text('no data'),);
            }
          },
          listener:  (context, state) {
            print('$state');
          }),
    );
  }
}
