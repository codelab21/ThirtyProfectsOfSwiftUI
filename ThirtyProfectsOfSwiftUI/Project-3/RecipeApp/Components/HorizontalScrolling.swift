//
//  HorizontalScrolling.swift
//  ThirtyProfectsOfSwiftUI
//
//  Created by Eymen on 14.08.2023.
//

import SwiftUI

struct HorizontalScrolling: View {
    @ObservedObject var recipeManager: RecipeManager
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) { // Hide scroll indicators
            LazyHStack(spacing: 0) {
                ForEach(recipeManager.recipes.shuffled()) { recipe in
                    RecipeCard(recipe: recipe)
                }
                .padding(.horizontal)
            }
        }
    }
}
