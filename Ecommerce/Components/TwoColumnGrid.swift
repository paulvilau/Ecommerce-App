//
//  TwoColumnGrid.swift
//  Ecommerce
//
//  Created by Paul Vilau on 08.09.2025.
//

import Foundation
import SwiftUI

struct TwoColumnGrid<Content: View>: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @ViewBuilder var content: () -> Content
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                content()
            }
        }
    }
}

