import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/index_pet/index_pet.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/bloc/list_pet_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/ui/components/list_pet_page.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/pet_detail/pet_detail_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/item_pet.dart';

class PetScreen extends StatefulWidget {
  @override
  _PetScreenState createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  ListPetBloc _bloc;

  @override
  void initState() {
    _bloc = context.read();
    _bloc.add(LoadListPetEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bgr2.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('LIST PET'),
            elevation: 0,
            centerTitle: true,
          ),
          body: BlocConsumer<ListPetBloc, ListPetState>(builder: (context, state) {
            if (state is ListPetLoading) {
              return ColorLoaderListPet();
            } else if (state is PetSuccessfully) {
              return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: state.pet.pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    IndexPet indexPet = state.pet.pets[index];
                    return GestureDetector(
                        onTap: () {
                          print('next page');
                          Navigator.pushNamed(context, DetailPetRouter.id,
                              arguments: indexPet.id);
                        },
                        child: ItemData(
                          indexPet: indexPet,
                        ));
                  });
            } else {
              return Center(
                child: Text('nodata'),
              );
            }
          }, listener: (context, state) {
            print('$state');
          }),
        ),
      );
  }
}
