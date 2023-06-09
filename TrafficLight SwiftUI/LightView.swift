//
//  CircleView.swift
//  TrafficLight SwiftUI
//
//  Created by Kate Kashko on 8.06.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let figure: String
    let opacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 120)
                .foregroundColor(color)
                .opacity(opacity)
            Image(systemName: figure)
                .font(.system(size: 70))
        }
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, figure: "figure.stand", opacity: 1.0 )
    }
}

