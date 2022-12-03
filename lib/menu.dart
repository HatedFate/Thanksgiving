class Recipe {
  String title;
  String image;
  List<String> instruction;

  String getTitle() => title;
  String getImage() => image;
  List<String> getInstruction() => instruction;

  Recipe(this.title, this.image, this.instruction);
}


final List<Recipe> food = [
  Recipe("Chicken #1", "../assets/chicken1.png", [
    "2 tbsp extra-virgin olive oil",
    "3 chicken breasts",
    "Kosher salt",
    "Freshly ground black pepper",
    "1 medium onion",
    "2 carrots",
    "1 tbsp freshly minced ginger",
    "4 cup of cooked white rice",
    "3 large eggs, beaten",
    "2 green onions, thinly sliced"
  ]),
  Recipe("Chicken #2", "../assets/chicken2.jpg", [
    "1 tbsp extra-virgin olive oil",
    "4 boneless skinless chicken breasts",
    "Kosher salt",
    "Freshly ground black pepper",
    "1 tsp dried oregano",
    "3 tbsp butter",
    "3 cloves garlic, minced",
    "1 1/2 cup of cherry tomatoes, halves",
    "3 cup of baby spinach",
    "1/2 cup of heavy cream",
    "1/4 cup of freshly grated Parmesan",
    "Lemon wedges"
  ]),
  Recipe("Chicken #3", "../assets/chicken3.jpg", [
    "8 skin-on chicken thighs",
    "Kosher salt",
    "Freshly ground black pepper",
    "Extra-virgin olive oil",
    "1 onion, chopped",
    "3 cloves garlic, minced",
    "2 carrots, sliced",
    "8 oz sliced mushrooms",
    "6 thyme sprigs",
    "1/2 cup of dry white wine",
    "1 (28-oz) can crushed tomatoes",
    "3 tbsp drained capers",
    "1/4 up of freshly chopped parsley"
  ])
];

final List<Recipe> drink = [
  Recipe("Drink #1", "../assets/drink1.jpg", [
    "2 tbsp granulated sugar",
    "1 tbsp ground cinnamon",
    "1 cup of apple cider",
    "1 (750-mL) bottle prosecco or Champagne"
  ]),
  Recipe("Drink #2", "../assets/drink2.jpg", [
    "1 cup of whipped cream",
    "1 tbsp powdered sugar",
    "1/4 cup of Irish cream",
    "1 1/2 oz Irish cream",
    "1 1/2 oz hazelnut liqueur",
    "/2 tbsp crushed hazelnuts or graham crackers"
  ]),
  Recipe("Drink #3", "../assets/drink3.jpg", [
    "2 oz vodka",
    "1 oz coffee liquor",
    "1 oz heavy cream"
  ])
];

final List<Recipe> dessert = [
  Recipe("dessert #1", "../assets/dessert1.jpg", [
    "8 whole graham crackers",
    "1 cup lightly toasted walnuts, divided",
    "2 tbsp light brown sugar",
    "5 tbsp unsalted butter, melted",
    "1/2 cup and 2 tbsp granulated sugar, divided",
    "1 tbsp orange zest",
    "3 (8-oz) packages cream cheese",
    "1/2 cup and 2 tbsp packed light muscovado sugar",
    "4 large eggs",
    "1 large vanilla bean",
    "1 ts salt",
    "1/2 cup of heavy cream"
  ]),
  Recipe("dessert #2", "../assets/dessert2.jpg", [
    "Cooking spray",
    "1 pound unsalted butter",
    "1 1/4 cups of confectioners' sugar",
    "1 ts kosher salt",
    "5 cups all-purpose flour",
    "1 large egg",
    "Two 15-oz cans pumpkin puree",
    "2 1/2 cups of heavy cream",
    "1 1/2 cups of granulated sugar",
    "4 large eggs, lightly beaten",
    "2 ts ground cinnamon",
    "1 ts grated nutmeg",
    "1 ts pure vanilla extract",
    "1/2 ts kosher salt",
    "Whipped cream"
  ]),
  Recipe("dessert #3", "../assets/dessert3.jpg", [
    "6 tbsp unsalted butter, melted",
    "9 chocolate graham crackers",
    "2 tbsp sugar",
    "Pinch fine salt",
    "4 (8-oz) packages cream cheese",
    "1 1/4 cups of sugar",
    "1 cup of sour cream",
    "6 large eggs",
    "1 tbsp pure vanilla extract",
    "1 cup pecans",
    "1/2 cup of heavy cream",
    "1 tbsp unsalted butter",
    "1 ts pure vanilla extract",
    "1/2 cup of sugar"
  ]),
];