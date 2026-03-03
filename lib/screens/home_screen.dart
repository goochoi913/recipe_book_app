import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
// import 'details_screen.dart'; // We will uncomment this in Step 5!

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Book'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // We use ListView.builder for an efficient, scrollable list
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              contentPadding: const EdgeInsets.all(8),
              // ClipRRect gives our image nice rounded corners!
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  recipe.imagePath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                recipe.name, 
                style: const TextStyle(fontWeight: FontWeight.bold)
              ),
              subtitle: Text('${recipe.ingredients.length} ingredients'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // TODO: Uncomment in Step 5 to enable real navigation!
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
                */
                
                // Temporary snackbar just to prove the tap works
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped ${recipe.name}!')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}