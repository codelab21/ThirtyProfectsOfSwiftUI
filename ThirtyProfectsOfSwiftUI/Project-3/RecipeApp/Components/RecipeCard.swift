//
//  RecipeCard.swift
//  30Projects
//
//  MARK: codelab21 follow me on Instagram and YouTube
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe

    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 130)
                    .padding(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 4)
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 7) {
                Text(recipe.headline)
                    .font(.headline)
                    .foregroundColor(.gray)
                Text(recipe.title)
                    .font(.title3).bold()
                Text(recipe.ingredients.joined(separator: ", "))
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 40, alignment: .topLeading)
            }
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe(title: "Pasta Carbonara",headline: "Breakfast", ingredients: ["Spaghetti", "Eggs", "Pancetta", "Parmesan"],instructions: "Cook pasta, mix eggs and cheese, toss with cooked pancetta and pasta.", imageName: "salmon"))
    }
}
