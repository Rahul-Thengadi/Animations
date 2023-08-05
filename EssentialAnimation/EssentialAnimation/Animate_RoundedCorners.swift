//
//  Animate_RoundedCorners.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_RoundedCorners: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundColor(.blue)
                .frame(width: 350, height: 200)
                .padding()
                .animation(.default, value: change)
        }
        .font(.title)
    }
}

struct Animate_RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RoundedCorners()
    }
}
