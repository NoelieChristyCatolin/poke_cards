import 'package:dio/dio.dart';
import 'package:poke_cards/api_service.dart';
import 'package:poke_cards/models/pokemon.dart';
import 'package:poke_cards/models/pokemons.dart';

class CardListRepository {
  CardListRepository({required this.apiServices});

  final ApiServices apiServices;

  Future<Pokemon> fetchPokemonDetails(String pokemonName) async{
    Response response = await apiServices.fetchPokemonDetails(pokemonName);
    Pokemon pokemon = Pokemon.fromJson(response.data);
    return pokemon;
  }

  Future<Pokemons> fetchPokemons() async{
    Response response = await apiServices.fetchPokemons();
    Pokemons pokemons = Pokemons.fromJson(response.data);
    return pokemons;
  }
}