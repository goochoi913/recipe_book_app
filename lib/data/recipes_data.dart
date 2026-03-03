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
    ingredients: ['Chicken breast', 'Bell peppers', 'Broccoli', 'Soy sauce', 'Garlic', 'Olive oil'],
    instructions: 'Slice chicken and vegetables. Cook chicken first, add veggies, stir in soy sauce. Serve hot.',
  ),

  Recipe(
    name: 'Avocado Toast',
    imagePath: 'assets/images/avocado_toast.jpg',
    ingredients: ['Bread', 'Avocado', 'Salt', 'Black pepper', 'Lemon juice'],
    instructions: 'Toast bread. Mash avocado with salt, pepper, and lemon. Spread and serve.',
  ),

  Recipe(
    name: 'Pancakes',
    imagePath: 'assets/images/pancakes.jpg',
    ingredients: ['Flour', 'Milk', 'Eggs', 'Baking powder', 'Sugar', 'Butter'],
    instructions: 'Mix ingredients into batter. Pour onto hot pan. Flip when bubbly. Serve with syrup.',
  ),

  Recipe(
    name: 'Grilled Cheese Sandwich',
    imagePath: 'assets/images/grilled_cheese.jpg',
    ingredients: ['Bread', 'Cheddar cheese', 'Butter'],
    instructions: 'Butter bread. Add cheese between slices. Grill until golden brown and melted.',
  ),
];