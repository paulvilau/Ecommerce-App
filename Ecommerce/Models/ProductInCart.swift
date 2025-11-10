//
//  ProductInCart.swift
//  Ecommerce
//
//  Created by Paul Vilau on 09.09.2025.
//

import Foundation
import SwiftUI

struct ProductInCart: Identifiable {
    var id: String {
        product.id
    }
    
    let product: Product
    var quantity: Int
}
