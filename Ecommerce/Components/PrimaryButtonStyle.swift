//
//  PrimaryButtonStyle.swift
//  Ecommerce
//
//  Created by Paul Vilau on 08.09.2025.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 15, weight: .bold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
