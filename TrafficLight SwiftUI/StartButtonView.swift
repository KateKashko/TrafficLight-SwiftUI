//
//  StartButtonView.swift
//  TrafficLight SwiftUI
//
//  Created by Kate Kashko on 12.06.2023.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .frame(width: 150.0, height: 50.0)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
