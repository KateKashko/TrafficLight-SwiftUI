//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Kate Kashko on 8.06.2023.
//

import SwiftUI

enum TrafficLightColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
   
    @State private var currentColor: TrafficLightColor = .red

    var body: some View {
        
        VStack {
            ZStack {
                FrameView()
                LightView(color: .red, figure: "figure.stand")
                    .opacity(currentColor == .red ? 1 : 0.3)
            }
            ZStack {
                FrameView()
                LightView(color: .yellow, figure: "")
                    .opacity(currentColor == .yellow ? 1 : 0.3)
            }
            
            ZStack {
                FrameView()
                LightView(color: .green, figure: "figure.walk")
                    .opacity(currentColor == .green ? 1 : 0.3)
            }
            Spacer()
            Button(action: {
                changeColor()
            }) {
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
    }
    
    private func changeColor() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

