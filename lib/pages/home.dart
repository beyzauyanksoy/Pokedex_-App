import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/services/pokedex_api.dart';

import '../widgets/app_title.dart';
import '../widgets/pokemon_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<PokemonModel>> _pokemonListFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const AppTitle(),
                Expanded(child: PokemonList()),
              ],
            ),
          );
        },
      ),
    );
  }
}
