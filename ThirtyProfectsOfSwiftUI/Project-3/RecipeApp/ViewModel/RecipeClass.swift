//
//  RecipeClass.swift
//  30Projects
//
//  Created by Eymen on 13.08.2023.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var ingredients: [String]
    var instructions: String
    var imageName: String
}


class RecipeManager: ObservableObject {
    @Published var recipes: [Recipe] = [
            Recipe(title: "Classic Margherita Pizza", headline: "Lunch",
                   ingredients: ["Pizza dough", "Tomatoes", "Fresh mozzarella", "Basil", "Olive oil"],
                   instructions: "Start by preheating your oven to its highest temperature. Roll out the pizza dough into your desired shape. Spread a thin layer of crushed tomatoes over the dough, leaving a border around the edges. Tear the fresh mozzarella into small pieces and distribute them evenly over the tomatoes. Sprinkle fresh basil leaves on top. Drizzle a bit of olive oil over the pizza. Bake the pizza on a preheated pizza stone or baking sheet until the crust is golden and the cheese is bubbly, about 10-12 minutes. Remove from the oven, let it cool slightly, and enjoy your homemade Margherita pizza.",
                   imageName: "pizza"),
            
            Recipe(title: "Grilled Chicken Salad", headline: "Lunch",
                   ingredients: ["Chicken breasts", "Mixed greens", "Cherry tomatoes", "Cucumbers", "Balsamic vinaigrette"],
                   instructions: "Start by grilling the chicken breasts until they are cooked through and have nice grill marks. While the chicken is cooking, prepare the salad by washing and drying the mixed greens, slicing the cherry tomatoes, and chopping the cucumbers. Once the chicken is done, let it rest for a few minutes before slicing it. In a large bowl, toss the greens, tomatoes, and cucumbers together. Place the sliced grilled chicken on top. Drizzle the balsamic vinaigrette over the salad. Toss everything together gently to combine. Your delicious and healthy grilled chicken salad is ready to be enjoyed!",
                   imageName: "chicken"),
            
            Recipe(title: "Vegetable Stir-Fry", headline: "Dinner",
                   ingredients: ["Assorted vegetables", "Tofu", "Soy sauce", "Ginger", "Garlic", "Sesame oil"],
                   instructions: "Start by preparing the vegetables. Wash and chop them into bite-sized pieces. Press the tofu to remove excess moisture and cut it into cubes. In a wok or large skillet, heat some sesame oil over medium-high heat. Add ginger and garlic, sautéing until fragrant. Add the tofu and stir-fry until it's golden and slightly crispy. Add the chopped vegetables and continue to stir-fry until they're tender yet still slightly crisp. Pour in some soy sauce for flavor and toss everything together. Your colorful vegetable stir-fry is now ready to be served. Enjoy it over steamed rice or noodles!",
                   imageName: "stir_fry"),
            
            Recipe(title: "Baked Salmon", headline: "Dinner",
                   ingredients: ["Salmon fillets", "Lemon", "Dill", "Garlic", "Olive oil"],
                   instructions: "Preheat your oven to 375°F (190°C). Place the salmon fillets on a baking sheet lined with parchment paper. Drizzle olive oil over the fillets and rub them with minced garlic and chopped dill. Thinly slice the lemon and place lemon slices on top of the salmon. Season with salt and pepper. Bake the salmon in the preheated oven for about 12-15 minutes or until the salmon flakes easily with a fork. Serve the baked salmon with your favorite side dishes and enjoy a nutritious and flavorful dinner!",
                   imageName: "salmon"),
            
            Recipe(title: "Homestyle Beef Stew", headline: "Dinner",
                   ingredients: ["Beef stew meat", "Potatoes", "Carrots", "Onions", "Beef broth", "Thyme"],
                   instructions: "Start by cutting the beef stew meat into bite-sized pieces and seasoning them with salt and pepper. Heat some oil in a large pot over medium-high heat. Brown the beef pieces on all sides, then remove them from the pot. In the same pot, add chopped onions and sauté until they're translucent. Add diced carrots and potatoes, and stir for a few minutes. Return the browned beef to the pot. Pour in enough beef broth to cover the ingredients. Add a few sprigs of thyme for flavor. Cover the pot and let the stew simmer on low heat for about 1.5 to 2 hours, or until the beef is tender and the flavors have melded together. Serve your hearty homestyle beef stew with crusty bread and savor the comforting flavors!",
                   imageName: "beef"),
            
            Recipe(title: "Caprese Salad", headline: "Lunch",
                   ingredients: ["Tomatoes", "Fresh mozzarella", "Basil", "Balsamic glaze", "Olive oil"],
                   instructions: "Slice the tomatoes and fresh mozzarella into rounds of similar thickness. Arrange the tomato and mozzarella slices on a serving plate, alternating and slightly overlapping them. Tuck fresh basil leaves between the tomato and mozzarella slices. Drizzle balsamic glaze and olive oil over the salad. Season with a sprinkle of salt and freshly ground black pepper. This Caprese salad is a celebration of simple ingredients and fresh flavors. It's a perfect appetizer or light lunch option that highlights the delicious combination of tomatoes, mozzarella, and basil.",
                   imageName: "salad"),
            
            // Add more recipes with detailed instructions and information...
        ]}
