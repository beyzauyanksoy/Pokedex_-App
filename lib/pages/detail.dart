import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/widgets/poke_information.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/poke_type_name.dart';

class Detail extends StatelessWidget {
  final PokemonModel pokemon;
  const Detail({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIhelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            PokeTypeName(
              pokemon: pokemon,
            ),
            Expanded(child: PokeInformation(pokemon: pokemon))
          ],
        ),
      ),
    );
  }
}
