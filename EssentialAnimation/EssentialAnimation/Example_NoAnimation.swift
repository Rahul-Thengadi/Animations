//
//  Example_NoAnimation.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Example_NoAnimation: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                // 2. The variable's value changing causes the views Y postion to change
                .offset(x: 0, y: change ? 300 : 0)
            
            Spacer()
            
            Button("Change") {
                // 1. The button triggers a variable value change
                change.toggle()
            }.padding(.bottom)
        }.font(.title)
    }
}

struct Example_NoAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Example_NoAnimation()
    }
}
