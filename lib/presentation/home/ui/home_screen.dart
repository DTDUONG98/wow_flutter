import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/user/model/response/login_response.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/list_pet_repo.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/pvp_rank_repo.dart';
import 'package:flutter_architecture/di/injection/injection.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/list_pet_usecases.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/pvp_rank_usecases.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/infor/ui/infor_screen.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/bloc/list_pet_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/ui/list_pet_screen.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/quests/ui/search_screen.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/rank/bloc/rank_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/rank/ui/rank_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  final LoginResponse response;

  HomeScreen(this.response);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  @override

  void initState(){
    super.initState();
    _currentPageIndex = 0;
  }

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });


  }
  final List<Widget> childrens  = [InForScreen(),BlocProvider(
  create: (_) => RankBloc(
  pvpRankUseCase: PVPRankUseCase(getIt<PVPRankRepoImpl>())),
  child: RankScreen()), BlocProvider(
      create: (_) => ListPetBloc(
          listPetUseCases: ListPetUseCase(getIt<ListPetRepoImpl>())),
      child: PetScreen()), SearchScreen()];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: childrens[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: _currentPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _currentPageIndex == 0 ? Colors.amber : Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Game Icon.svg', color: Colors.white,),
            title: Text(
              'PVP Rank',
              style: TextStyle(
                color: _currentPageIndex == 1 ? Colors.amber : Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Heart Icon_2.svg', color: Colors.white,),
            title: Text(
              'Pet',
              style: TextStyle(
                color: _currentPageIndex == 2 ? Colors.amber : Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Search Icon.svg', color: Colors.white,),
            title: Text(
              'Search',
              style: TextStyle(
                color: _currentPageIndex == 3 ? Colors.amber : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
