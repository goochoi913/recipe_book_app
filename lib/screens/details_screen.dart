import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipe.imagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  
                  ...recipe.ingredients.map(
                    (ingredient) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text('• $ingredient', style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  
                  const Divider(height: 40, thickness: 1),
                  
                  const Text(
                    'Instructions',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  
                  Text(
                    recipe.instructions,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}