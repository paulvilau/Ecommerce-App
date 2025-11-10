//
//  SquareImageModifier.swift
//  Ecommerce
//
//  Created by Paul Vilau on 09.09.2025.
//

import Foundation
import SwiftUI

extension Image{
    func squareImageStyle() -> some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
    }
}
