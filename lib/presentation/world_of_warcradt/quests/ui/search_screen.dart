import 'package:flutter/material.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/quests/quests_router.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Search Quests for Id',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new QuestSearch());
  }
}


class QuestSearch extends StatefulWidget {
  @override
  _QuestSearchState createState() => _QuestSearchState();
}

class _QuestSearchState extends State<QuestSearch> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('Search Quests for Id'),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
    Navigator.pushNamed(context, SearchQuestsRouter.id,
        arguments: value,);
  }

  _QuestSearchState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("cleared");
        },
        onClosed: () {
          print("closed");
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      key: _scaffoldKey,
      body: new Center(
          child: new Text("Don't look at me! Press the search button!")),
    );
  }
}
