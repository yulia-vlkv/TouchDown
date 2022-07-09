//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    
    var brand: Brand
    
    // MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - Preview

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
