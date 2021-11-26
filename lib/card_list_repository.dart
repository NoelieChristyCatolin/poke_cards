import 'package:dio/dio.dart';
import 'package:poke_cards/api_service.dart';
import 'package:poke_cards/models/pokemon.dart';

class CardListRepository {
  CardListRepository({required this.apiServices});

  final ApiServices apiServices;

  Future<Pokemon> fetchPokemonDetails(String pokemonName) async{
    Response response = await apiServices.fetchPokemonDetails(pokemonName);
    Pokemon pokemon = Pokemon.fromJson(response.data);
    return pokemon;
  }

}