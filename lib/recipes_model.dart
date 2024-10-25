// To parse this JSON data, do
//
//     final recipiece = recipieceFromJson(jsonString);

import 'dart:convert';

Recipiece recipieceFromJson(String str) => Recipiece.fromJson(json.decode(str));

class Recipiece {
    List<Recipe> recipes;

    Recipiece({
        required this.recipes,
    });

    factory Recipiece.fromJson(Map<String, dynamic> json) => Recipiece(
        recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    );

}

class Recipe {
    int id;
    String name;
    List<String> ingredients;
    List<String> instructions;
    String cuisine;
    int userId;
    String image;
  
    

    Recipe({
        required this.id,
        required this.name,
        required this.ingredients,
        required this.instructions,
       
        required this.cuisine,
       
        required this.userId,
        required this.image,
  
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        id: json["id"],
        name: json["name"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        
        cuisine: json["cuisine"],
       
        userId: json["userId"],
        image: json["image"],
    
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "cuisine": cuisine,
        "userId": userId,
        "image": image,
       
    };
}
