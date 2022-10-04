part of 'explore_recipe.dart';

class Ingredients {
  String imageUrl;
  String title;
  String source;
  Ingredients(
      {required this.imageUrl, required this.title, required this.source});
  Ingredients.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    source = json['source'];
  }
}
