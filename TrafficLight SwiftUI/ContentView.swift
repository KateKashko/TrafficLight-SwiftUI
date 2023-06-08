//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Kate Kashko on 8.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LightView(color: .red, figure: "figure.stand")
            LightView(color: .yellow, figure: "")
            LightView(color: .green, figure: "figure.walk")
            Spacer()
            Button(action: {}) {
                
                Text("Next")
                    .font(.largeTitle)
                    .frame(width: 150.0, height: 50.0)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
        }
        .padding(.top, 40)
//        private func nextColor() {
//
//        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
