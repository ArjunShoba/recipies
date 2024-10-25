import 'package:recipes_model/recipes_model.dart';
import 'package:flutter/material.dart';

class RecipeDetailPage extends StatelessWidget{
  final Recipe recipes;
  const RecipeDetailPage ({required this.recipes});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(recipes.name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 180),
              Image.network(recipes.image),   
                SizedBox(height: 5),
                Text("name:${recipes.name}",
                ),
                SizedBox(height: 5),
               Text(recipes.cuisine),
               SizedBox(height: 5),
               Text("ingradients:${recipes.ingredients}",
               ),
               SizedBox(height: 5),
               Text("instructons:${recipes.instructions}",
               ),

                
            ],

          ),
        ),
      ),
);
}
}