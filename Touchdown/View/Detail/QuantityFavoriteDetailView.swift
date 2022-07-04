//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Zach Cervi on 7/4/22.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //MARK: - Property
    @State private var counter: Int = 0
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(width: 36)
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}
//MARK: - Preview
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
