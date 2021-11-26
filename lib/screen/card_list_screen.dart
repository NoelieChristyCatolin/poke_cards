import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_cards/bloc/card_list_cubit.dart';
import 'package:poke_cards/bloc/card_list_state.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> moveWidgets = [];
    moveWidgets.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Tail Whap'),
        Text('10'),
      ],
    ));
    moveWidgets.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Tail Whap'),
        Text('10'),
      ],
    ));

    return BlocBuilder<CardListCubit, CardListState>(builder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('PokeCard'),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pikachu'),
              Row(
                children: [
                  Text('hp'),
                  Text('60'),
                ],
              ),
            ],),
          Card(
            child: Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/25.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Abilities'),
              Text('10'),
            ],
          ),
          Column(
            children: moveWidgets,
          )
        ],
      ),
    ));
  }


}
