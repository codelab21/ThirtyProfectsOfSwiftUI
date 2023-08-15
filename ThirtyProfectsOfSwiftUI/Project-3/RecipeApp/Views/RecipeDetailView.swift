//
//  RecipeDetailView.swift
//  30Projects
//
//  Created by Eymen on 14.08.2023.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack {
                        Image(recipe.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 150)
                            .padding(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 4)
                            
                    }
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                    .padding()
                    
                    Text(recipe.headline)
                        .font(.title).bold()
                        .padding(.horizontal)
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Instructions:")
                                .font(.title3).bold()
                                .padding(.vertical, 5)
                            Text(recipe.instructions)
                                .font(.body)
                                .foregroundColor(.white.opacity(0.7))
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                        .padding()
                        VStack(alignment: .leading) {
                            Text("Ingredients:")
                                .font(.title3).bold()
                                .padding(.horizontal)
            
                            ScrollView(.horizontal, showsIndicators: false) { // Hide scroll indicators
                                LazyHStack(spacing: -20) {
                                    ForEach(Array(recipe.ingredients.enumerated()), id: \.element) { index, ingredient in
                                        Text(ingredient)
                                            .foregroundColor(.white.opacity(0.7))
                                            .padding(10)
                                            .background(.ultraThinMaterial)
                                            .cornerRadius(5)
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            .frame(height:100)

                        }
                        
                    }
                    .frame(width: .infinity, height: 500, alignment: .bottomLeading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20, corners: [.topLeft, .topRight])

                    
                }
            }
            .background(.ultraThinMaterial)
            .navigationBarTitle(recipe.title)
            .navigationBarItems(trailing: Image(systemName: "xmark.circle.fill").onTapGesture { dismiss()})
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe(title: "Baked Salmon", headline: "Dinner",
                                        ingredients: ["Salmon fillets", "Lemon", "Dill", "Garlic", "Olive oil"],
                                        instructions: "Preheat your oven to 375°F (190°C). Place the salmon fillets on a baking sheet lined with parchment paper. Drizzle olive oil over the fillets and rub them with minced garlic and chopped dill. Thinly slice the lemon and place lemon slices on top of the salmon. Season with salt and pepper. Bake the salmon in the preheated oven for about 12-15 minutes or until the salmon flakes easily with a fork. Serve the baked salmon with your favorite side dishes and enjoy a nutritious and flavorful dinner!",
                                        imageName: "salmon"))
            .preferredColorScheme(.dark)
    }
}

