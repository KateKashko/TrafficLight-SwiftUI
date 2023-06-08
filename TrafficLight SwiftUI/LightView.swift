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
    
    var body: some View {
        ZStack {
//            Rectangle()
//                .frame(width: 140, height: 140)
//                .cornerRadius(20)
            Circle()
                .frame(width: 120)
                .foregroundColor(color)
//            Image(systemName: figure)
//                .font(.system(size: 70))
        }
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, figure: "figure.stand")
    }
}
