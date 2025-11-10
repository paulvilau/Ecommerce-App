//
//  ProductGridView.swift
//  Ecommerce
//
//  Created by Paul Vilau on 06.09.2025.
//

import SwiftUI

struct ProductGridView: View {
    
    @State var viewModel : ProductGridViewModel
    
    init(filter: ProductFilter) {
        self.viewModel = ProductGridViewModel(filter: filter)
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        
        VStack {
            TwoColumnGrid {
                ForEach(viewModel.products) {
                    product in ProductRow(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductGridView(filter: .all)
}
