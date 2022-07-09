//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) //: Grid
            .frame(height: 200)
            .padding(15)
        }) //: Scroll
    }
}

// MARK: - Preview

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
