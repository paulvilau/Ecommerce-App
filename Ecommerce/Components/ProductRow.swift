//
//  ProductRow.swift
//  Ecommerce
//
//  Created by Paul Vilau on 06.09.2025.
//

import SwiftUI

struct ProductRow: View {

    @Environment(FavoritesManager.self) var favoritesManager: FavoritesManager
    
    let product: Product

    var body: some View {
        NavigationLink {
            ProductDetailView(product: product)
        } label: {
            VStack(alignment: .leading, spacing: 5){
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 8, bottomLeading: 0, bottomTrailing: 0, topTrailing: 8)))
                    .clipped()
                Group{
                    Text(product.title)
                        .lineLimit(1)
                        .foregroundStyle(.black)
                        .font(.system(size: 15, weight: .semibold))
                    Text(product.displayPrice)
                        .foregroundStyle(.black)
                        .font(.system(size: 15))
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.system(size: 14))
                            .foregroundStyle(.yellow)
                        Text(product.displayRating)
                            .foregroundStyle(.black)
                            .font(.system(size: 14))
                    }
                }
                .padding(.horizontal, 5)
                Spacer()
            }
            .frame(width: 150, height: 270)
            .overlay(alignment: .topTrailing, content: {
                Button{
                    if favoritesManager.products.contains(product) {
                        favoritesManager.products
                            .removeAll(where: { $0.id == product.id })
                    } else {
                        favoritesManager.products.append(product)
                    }
                } label: {
                    Image(systemName: favoritesManager.products.contains(product) ? "heart.fill" : "heart")
                }
                .padding(8)
            })
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(uiColor: UIColor.lightGray)
                        .opacity(0.4), lineWidth: 1)
            }
        }
    }
}

#Preview {
    NavigationStack{
        ProductRow(product: ProductsClient.fetchProducts()[0])
            .environment(FavoritesManager())
    }
}
