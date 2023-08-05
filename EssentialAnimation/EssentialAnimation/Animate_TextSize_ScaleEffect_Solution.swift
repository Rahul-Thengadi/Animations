//
//  Animate_TextSize.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_TextSize_ScaleEffect_Solution: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            Spacer()
            
            Text("Hello!")
                .font(.system(size: 80))
                .scaleEffect(change ? 1 : 0.25) // Not a good experience, text blurred
                .animation(.easeInOut, value: change)
                .border(.blue)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Animate_TextSize_ScaleEffect_Solution_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize_ScaleEffect_Solution()
    }
}
