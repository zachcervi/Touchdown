//
//  TopDetailView.swift
//  Touchdown
//
//  Created by Zach Cervi on 7/4/22.
//

import SwiftUI

struct TopDetailView: View {
    //MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .center, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            //PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })//: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

//MARK: - PREVIEW
struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
