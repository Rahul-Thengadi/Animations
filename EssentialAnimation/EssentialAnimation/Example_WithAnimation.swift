//
//  Example_WithAnimation.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Example_WithAnimation: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                // 2. The variable's value changing causes the views Y position to change
                .offset(x: 0, y: change ? 300 : 0)
                // 3. Animate the change between the start and stop states
                .animation(Animation.easeInOut, value: change)
            
            Spacer()
            
            Button("Change") {
                // 1. The button triggers a variable value change
                change.toggle()
            }.padding(.bottom)
        }.font(.title)
    }
}

struct Example_WithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Example_WithAnimation()
    }
}
