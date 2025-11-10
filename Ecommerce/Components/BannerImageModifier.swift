//
//  BannerImageModifier.swift
//  Ecommerce
//
//  Created by Paul Vilau on 06.09.2025.
//

import Foundation
import SwiftUI

extension Image{
    func bannerImageStyle() -> some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: 250)
            .clipped()
    }
}
