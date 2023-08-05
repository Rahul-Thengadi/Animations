//
//  Execrcise1_FadeInWithOpacity_Refactor.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Execrcise1_FadeInWithOpacity_Refactor: View {
    @State private var change = false

    var body: some View {
        VStack {
            Spacer()
            
            // Logo Composition
            VStack(spacing: 1) {
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                    Rectangle()
                        .frame(width: 35, height: 70)
                }.offset(x: -18) // Move left
                
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 36, height: 72)
                    Rectangle()
                        .frame(width: 72, height: 36)
                }
                .offset(x: 18) // Move right
            }
            .foregroundColor(.red)
            .opacity(change ? 1 : 0) // Transparent until change occurs
            .animation(.default, value: change)
            
            Spacer()
            
            Button("Change") {
                change.toggle()  // Nothing will happen yet.
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

struct Execrcise1_FadeInWithOpacity_Refactor_Previews: PreviewProvider {
    static var previews: some View {
        Execrcise1_FadeInWithOpacity_Refactor()
    }
}
