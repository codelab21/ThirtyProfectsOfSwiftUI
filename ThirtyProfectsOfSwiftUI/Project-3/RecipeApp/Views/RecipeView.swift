//
//  RecipeView.swift
//  30Projects
//
//  Created by Eymen on 13.08.2023.
//

import SwiftUI

struct RecipeView: View {
    @ObservedObject var recipeManager: RecipeManager
    @State private var selectedRecipe: Recipe? = nil
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            HorizontalScrolling(recipeManager: recipeManager)
                .padding(.vertical)

            VStack(spacing: 20) {
                ForEach(recipeManager.recipes.reversed()) { recipe in
                    RecipeCard(recipe: recipe)
                        .onTapGesture {
                            selectedRecipe = recipe
                        }
                }
                .listStyle(.plain)
                .padding(.horizontal)

            }
            .padding(.vertical)
            .background(.ultraThickMaterial)
            .fullScreenCover(item: $selectedRecipe) { recipe in
                RecipeDetailView(recipe: recipe)
            }
        }
        .background(.ultraThinMaterial)
        .navigationBarTitle("Recipes")
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipeManager: RecipeManager())
            .preferredColorScheme(.dark)
    }
}
