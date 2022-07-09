//
//  RaitingsSizesDetailView.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import SwiftUI

struct RaitingsSizesDetailView: View {
    // MARK: - Properties
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Raitings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Raitings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                }) //: Hstack
            }) //: VStack
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
                        })
                    } //: Loop
                }) //: HStack
            }) //: VStack
        }) //: HStack
    }
}

// MARK: - Preview

struct RaitingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
