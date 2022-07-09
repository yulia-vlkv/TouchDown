//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } //: Loop
                } //: Section
            }) //: Grid
            .frame(height: 160)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: Scroll
    }
}

// MARK: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
