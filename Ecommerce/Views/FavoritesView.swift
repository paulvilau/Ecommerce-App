//
//  FavoritesView.swift
//  Ecommerce
//
//  Created by Paul Vilau on 09.09.2025.
//

import SwiftUI

struct FavoritesView: View {
    
    @Environment(FavoritesManager.self) var favoritesManager : FavoritesManager
    
    fileprivate func FavoriteProductRow(product: Product) -> some View {
        HStack {
            Image(product.image)
                .squareImageStyle()
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.bottom, 1)
                Text(product.description)
                    .lineLimit(2)
                    .font(.system(size: 15))
            }
            Button {
                favoritesManager.products.removeAll { $0.id == product.id }
            } label: {
                Image(systemName: "heart.fill")
            }
        }
    }
    
    var body: some View {
        VStack {
            List(favoritesManager.products) { product in
                FavoriteProductRow(product: product)
            }
        }
        .overlay {
            if favoritesManager.products.count == 0 {
                Text("Nothing in Favorites")
            }
        }
    }
}
#Preview {
    FavoritesView()
        .environment(FavoritesManager())
}
