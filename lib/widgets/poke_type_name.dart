import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex_app/constants/constans.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PokeTypeName extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeTypeName({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "",
                  style: Constants.getNameStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getNameStyle(),
              )
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Chip(
              label: Text(
            pokemon.type?.join(' , ') ?? "",
            style: Constants.getTypeChipStyle(),
          ))
        ],
      ),
    );
  }
}
