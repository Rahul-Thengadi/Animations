//
//  Animate_Trim.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_Trim: View {
    @State private var change = false
    @State private var circleProgress: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
                circleProgress = change ? 0.25 : 1
            }
            
            Spacer()
            
            Circle()
                .trim(from: 0, to: circleProgress) // Animate trim
                .stroke(.blue,
                        style: StrokeStyle(lineWidth: 40,
                                           lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .padding(40)
                .animation(.default, value: change)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Animate_Trim_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Trim()
    }
}
