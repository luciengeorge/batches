import Mustache from "mustachejs";

const recipes = [
  {
    name: "Coq au Vin",
    ingredients: ["chicken", "red wine", "bacon", "mushrooms", "onions", "garlic"],
    difficulty: 7
  },
  {
    name: "Ratatouille",
    ingredients: ["eggplant", "zucchini", "bell peppers", "tomatoes", "onions", "garlic"],
    difficulty: 3
  },
  {
    name: "Croissant",
    ingredients: ["flour", "butter", "yeast", "sugar", "salt"],
    difficulty: 9
  },
  {
    name: "Bouillabaisse",
    ingredients: ["fish", "shellfish", "tomatoes", "fennel", "onions", "garlic", "saffron"],
    difficulty: 10
  }
]

// TODO: Your code goes below:
const templateElement = document.querySelector("#recipeTemplate");
const recipesContainer = document.querySelector("#recipesContainer");

recipes.forEach((recipe) => {
  // Compile the template
  const output = Mustache.render(templateElement.innerHTML, recipe);

  // Insert the rendered HTML into the document
  recipesContainer.insertAdjacentHTML("beforeend", output);
});
