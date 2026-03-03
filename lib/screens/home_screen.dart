import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Book'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            clipBehavior: Clip.antiAlias, 
            elevation: 4,
            child: InkWell( 
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    recipe.imagePath,
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.name, 
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${recipe.ingredients.length} ingredients',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                        const Icon(Icons.chevron_right, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}