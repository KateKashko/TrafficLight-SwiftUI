//
//  FrameView.swift
//  TrafficLight SwiftUI
//
//  Created by Kate Kashko on 9.06.2023.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Rectangle()
            .frame(width: 140, height: 140)
            .cornerRadius(20)
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
