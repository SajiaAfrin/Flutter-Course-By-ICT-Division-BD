import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

import '../details_screen.dart';

class FastFoodScreen extends StatelessWidget {
   final List fastFood = bdfood["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(), 
      itemCount: fastFood.length,
      padding: EdgeInsets.all(15),
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments: fastFood[index]);
          },
          imageUrl: fastFood[index]["image"],
          title: fastFood[index]["title"],
          totalIngredients: countIngredients(fastFood[index]["ingredients"]),
        );
      }
    );
  }
}