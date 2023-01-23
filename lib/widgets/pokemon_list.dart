import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../model/pokemon_model.dart';
import '../services/pokedex_api.dart';
import 'pokelist_item.dart';

class PokemonList extends StatefulWidget {
  PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return GridView.builder(
            itemCount: _listem.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    Device.orientation == Orientation.portrait ? 2 : 4),
            itemBuilder: (context, index) {
              var oankipokemon = _listem[index];
              return PokelistItem(pokemon: oankipokemon);
            },
          );
        } else if (snapshot.hasError) {
          return const Text('hata');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
/*
ListView.builder(
            itemCount: _listem.length,
            itemBuilder: (context, index) {
              var oankipokemon = _listem[index];
              return PokelistItem(
                pokemon: oankipokemon,
              );
            },
          );
 */