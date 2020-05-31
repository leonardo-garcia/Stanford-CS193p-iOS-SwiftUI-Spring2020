//
//  ContentView.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 26/05/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
            
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
