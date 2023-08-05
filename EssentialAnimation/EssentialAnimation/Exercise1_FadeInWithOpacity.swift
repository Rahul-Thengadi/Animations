//
//  Exercise1_FadeInWithOpacity.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct FadeInWithOpacity: View {
    @State private var change = false

    var body: some View {
        VStack {
            Spacer()
            
            // Logo Composition
            VStack(spacing: 1) {
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .opacity(change ? 1 : 0) // Transparent until change occurs
                        .animation(.default, value: change)
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .opacity(change ? 1 : 0) // Transparent until change occurs
                        .animation(.default, value: change)
                }.offset(x: -18) // Move left
                
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 36, height: 72)
                        .opacity(change ? 1 : 0) // Transparent until change occurs
                        .animation(.default, value: change)
                    Rectangle()
                        .frame(width: 72, height: 36)
                        .opacity(change ? 1 : 0) // Transparent until change occurs
                        .animation(.default, value: change) 
                }
                .offset(x: 18) // Move right
            }
            .foregroundColor(.red)
            
            Spacer()
            
            Button("Change") {
                change.toggle()  // Nothing will happen yet.
            }
        }
        .font(.title)
    }
}

struct FadeInWithOpacity_Previews: PreviewProvider {
    static var previews: some View {
        FadeInWithOpacity()
    }
}
