// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/constans.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/pages/detail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:pokedex_app/model/pokemon_model.dart';

import 'poke_img_and_ball.dart';

class PokelistItem extends StatefulWidget {
  final PokemonModel pokemon;
  const PokelistItem({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  State<PokelistItem> createState() => _PokelistItemState();
}

class _PokelistItemState extends State<PokelistItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Detail(
                    pokemon: widget.pokemon,
                  )),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIhelper.getColorFromType(widget.pokemon.type![0]),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.pokemon.name ?? "",
                style: Constants.getNameStyle(),
              ),
              Chip(
                label: Text(
                  widget.pokemon.type![0],
                  style: Constants.getTypeChipStyle(),
                ),
              ),
              Expanded(
                child: PokemonImageAndBall(
                  pokemon: widget.pokemon,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
