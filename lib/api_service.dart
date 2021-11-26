import 'package:dio/dio.dart';

class ApiServices {
  Future<Response> fetchPokemonDetails(String pokemonName) async{
    try{
      var response = await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemonName');
      return response;
    }
    catch(e) {
      throw Exception('Failed to fetch');
    }
  }

  Future<Response> fetchPokemons() async{
    try{
      var response = await Dio().get('https://pokeapi.co/api/v2/pokemon/');
      return response;
    }
    catch(e) {
      throw Exception('Failed to fetch');
    }
  }
}