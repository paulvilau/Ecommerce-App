//
//  HomeViewModel.swift
//  Ecommerce
//
//  Created by Paul Vilau on 06.09.2025.
//

import Foundation
import SwiftUI

@Observable
class HomeViewModel{
    
    var showAllProducts = false
    
    func fetchProducts(filter: ProductFilter) -> [Product] {
        switch filter {
        case .all:
            return ProductsClient.fetchProducts()
        case .isFeatured:
            return ProductsClient.fetchProducts().filter({$0.isFeatured})
        case .highlyRated:
            return ProductsClient.fetchProducts().filter({$0.rating > 4})
        }
    }
}
