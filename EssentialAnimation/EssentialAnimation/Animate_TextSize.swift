//
//  Animate_TextSize.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_TextSize: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            Spacer()
            
            Text("Hello!")
                .font(.system(size: change ? 80 : 20)) // Not a good experience
                .animation(.easeInOut)
                .border(.blue)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Animate_TextSize_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize()
    }
}
