//
//  ContentView.swift
//  Touchdown
//
//  Created by Zach Cervi on 6/30/22.
//

import SwiftUI

struct ContentView: View {
   //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
       FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
