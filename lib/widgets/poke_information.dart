import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/constans.dart';
import '../model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(3.w),
          ),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildInformationRow('Name', pokemon.name),
          _buildInformationRow('Height', pokemon.height),
          _buildInformationRow('Weight', pokemon.weight),
          _buildInformationRow('Spawn Time', pokemon.spawnTime),
          _buildInformationRow('Spawn Time', pokemon.spawnTime),
          _buildInformationRow('Weakness', pokemon.weaknesses),
          _buildInformationRow('Pre Evolution', pokemon.prevEvolution),
          _buildInformationRow('Next Evolution', pokemon.nextEvolution),
        ],
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Container(
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Constants.getPokeInfoLabelTextStyle(),
          ),
          if (value is List && value.isNotEmpty)
            Text(
              value.join(' , '),
            )
          else if (value == null)
            Text(
              'Not available',
              style: Constants.getPokeInfoTextStyle(),
            )
          else
            Text(
              value,
            ),
        ],
      ),
    );
  }
}
