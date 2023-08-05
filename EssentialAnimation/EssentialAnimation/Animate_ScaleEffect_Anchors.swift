//
//  Animate_ScaleEffect_Anchors.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Animate_ScaleEffect_Anchors: View {
    @State private var change = false

    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.25, anchor: .top)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 0.5 : 1, anchor: .trailing)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.5, anchor: .bottomLeading)
                .animation(.default, value: change)
        }
        .font(.title)
    }
}

struct Animate_ScaleEffect_Anchors_Previews: PreviewProvider {
    static var previews: some View {
        Animate_ScaleEffect_Anchors()
    }
}
