import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta.jpg',
    ingredients: ['Spaghetti', 'Ground beef', 'Tomato sauce', 'Onion', 'Garlic'],
    instructions: 'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),
  Recipe(
    name: 'Classic Caesar Salad',
    imagePath: 'assets/images/salad.jpg',
    ingredients: ['Romaine lettuce', 'Croutons', 'Parmesan cheese', 'Caesar dressing'],
    instructions: 'Chop lettuce. Toss with dressing, croutons, and cheese. Serve chilled.',
  ),
  Recipe(
    name: 'Chicken Stir Fry',
    imagePath: 'assets/images/stirfry.jpg',
    ingredients: ['Chicken breast', 'Bell peppers', 'Broccoli', 'Soy sauce', 'Garlic'],
    instructions: 'Cook chicken. Add vegetables and garlic. Stir in soy sauce. Cook until tender.',
  ),
  Recipe(
    name: 'Blueberry Pancakes',
    imagePath: 'assets/images/pancakes.jpg',
    ingredients: ['Flour', 'Milk', 'Eggs', 'Blueberries', 'Baking powder'],
    instructions: 'Mix ingredients. Fold in blueberries. Pour batter onto griddle. Flip and cook until golden.',
  ),
];