import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

import '../constants/ui_helper.dart';

class PokemonImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonImageAndBall({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokebollImage = "assets/pokeball.png";
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokebollImage,
            width: UIhelper.calculatePokeIMgAndBallSize(),
            height: UIhelper.calculatePokeIMgAndBallSize(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) =>
                Image.asset('assets/Dewgong.png'),
            imageUrl: pokemon.img ?? "",
            width: UIhelper.calculatePokeIMgAndBallSize(),
            height: UIhelper.calculatePokeIMgAndBallSize(),
            placeholder: (context, url) => const CircularProgressIndicator(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
