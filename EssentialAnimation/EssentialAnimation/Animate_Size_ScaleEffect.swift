//
//  Animate_Size_ScaleEffect.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_Size_ScaleEffect: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 350, height: 200)
                .padding()
                .scaleEffect(change ? 0.1 : 1)
                .animation(.easeInOut, value: change)
        }
        .font(.title)
    }
}

struct Animate_Size_ScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Size_ScaleEffect()
    }
}
