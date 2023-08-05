//
//  Animate_Size_Frame.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_Size_Frame: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: change ? 100 : 350, height: change ? 100 : 200)
                .scaleEffect(change ? 0.5 : 1)
                .animation(.easeInOut, value: change)
        }
        .font(.title)
    }
}

struct Animate_Size_Frame_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Size_Frame()
    }
}
