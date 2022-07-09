//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Properties
    
    let category: Category
    
    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)

                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                
                Spacer()
            } //: HStack
            .frame(width: 180, height: 45, alignment: .leading)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

// MARK: - Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
