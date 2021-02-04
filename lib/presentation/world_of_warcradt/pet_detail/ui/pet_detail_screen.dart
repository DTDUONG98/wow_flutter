import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/abilities/abilities.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/pet_detail/bloc/pet_detail_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ability.dart';
import 'loading_detail_pet.dart';

class PetDetailScreen extends StatefulWidget {
  @override
  _PetDetailState createState() => _PetDetailState();
}

class _PetDetailState extends State<PetDetailScreen> {
  PetDetailBloc _bloc;

  @override
  void initState() {
    _bloc = context.read();
    _bloc.add(LoadPetDetail());
    super.initState();
  }
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bgr1.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('DETAIL PET'),
            centerTitle: true,
            elevation: 0,
          ),
          body: BlocConsumer<PetDetailBloc, PetDetailState>(
              builder: (context, state){
                if(state is LoadPetDetail){
                  return ColorLoaderDetailPet();
                } else if(state is PetDetailSuccess){
                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.network(state.petDetail.icon, width: 200, height: 200, fit: BoxFit.fill,)
                          ),
                        ),
                        Text(state.petDetail.name, style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 30.0),),
                        Text(state.petDetail.battlePetType.petTypename, style: TextStyle(color: Colors.white ,),),
                        Divider(color: Colors.white,),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, bottom: 10.0),
                                child: Text('Description', style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
                                child: Text(state.petDetail.description, style: TextStyle(color: Colors.white ,),),
                              ),
                              Divider(color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Abilities', style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: size.height*0.6,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: state.petDetail.abilities.length,
                                    itemBuilder: (BuildContext context, int index){
                                      Abilities abilities = state.petDetail.abilities[index];
                                      return ItemData(abilities: abilities);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
                else {
                  return ColorLoaderDetailPet();
                }
              },
              listener: (context,state){print('$state');}
          )
      ),
    );
  }
}
