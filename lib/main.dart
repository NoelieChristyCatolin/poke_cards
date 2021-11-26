import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_cards/api_service.dart';
import 'package:poke_cards/bloc/card_list_cubit.dart';
import 'package:poke_cards/card_list_repository.dart';
import 'package:poke_cards/screen/card_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CardListCubit>(create: (context) => CardListCubit(cardListRepository: CardListRepository(apiServices: ApiServices())) )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CarListScreen(),
      ),
    );
  }
}
