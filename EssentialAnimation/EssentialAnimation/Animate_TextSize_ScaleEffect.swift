//
//  Animate_TextSize.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_TextSize_ScaleEffect: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            Spacer()
            
            Text("Hello!")
                .font(.system(size: 20))
                .scaleEffect(change ? 4 : 1) // Not a good experience, text blurred
                .animation(.easeInOut, value: change)
                .border(.blue)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Animate_TextSize_ScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize_ScaleEffect()
    }
}
