//
//  ContentView.swift
//  SMSU_2
//
//  Created by Andrei Kovryzhenko on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 300.0
    var body: some View {
        VStack {
            TextView(value: $sliderValue)
            
            Slider(value: $sliderValue, in: 100...300, step: 1)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    @Binding var value: Double
    var body: some View {
        VStack(alignment: .leading) {
            Text("Марафон ")
                .foregroundColor(.gray) +
            Text("по SwiftUI ") +
            Text("«Отцовский Пинок»")
                .foregroundColor(.blue)
                .font(.title)
                .bold()
        }
        .padding(.zero)
        .frame(width: CGFloat(value), height: 200)
        .overlay(
            RoundedRectangle(cornerRadius: 0 )
                .stroke(lineWidth: 1)
                .foregroundColor(.red)
        )
    }
}
