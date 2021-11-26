import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_cards/bloc/card_list_cubit.dart';
import 'package:poke_cards/bloc/card_list_state.dart';
import 'package:poke_cards/models/ability.dart';
import 'package:poke_cards/screen/components/moves_widget.dart';

class CarListScreen extends StatefulWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {

  @override
  void initState() {
    super.initState();

    context.read<CardListCubit>().fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardListCubit, CardListState>(builder: (context, state) => Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('PokeCard'),),
      body: PageView.builder(
        itemCount:state.pokemons!.results.length,
        itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(state.pokemon?.name ?? '', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),),
                  Text( 'hp${state.pokemon?.stats[0].baseStat}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.red),),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: Colors.red,
                child: Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${state.pokemon?.id}.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,),
              ),
            ),
            Text(composedAbilities(state.pokemon?.abilities ?? [],), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.deepPurple),),
            // print(state.pokemon?.moves.length)
            MovesWidget(moves: state.pokemon?.moves ?? [])
          ],
        ),
      ),
        onPageChanged: (value){
          context.read<CardListCubit>().fetchPokemonDetails(state.pokemons!.results[value].name);
        },
       )
    ));
  }

  String composedAbilities(List<Ability> abilities){
    String string = '';
    for (var element in abilities) {
      string += '${element.ability.name}, ';
    }
    return string;
  }
}
