//
//  Animate_Opacity.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_Opacity: View {
    @State private var show = false

    var body: some View {
        
        VStack {
            Button("Show/Hide") {
                show.toggle()
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .opacity(show ? 1 : 0)
                    .animation(.easeInOut, value: show)
            }
        }
        .font(.title)
    }
}

struct Animate_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Opacity()
    }
}
