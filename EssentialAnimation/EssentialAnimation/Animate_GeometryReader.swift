//
//  Animate_GeometryReader.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_GeometryReader: View {
    @State private var change = false

    var body: some View {
        VStack(spacing: 20) {
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(change ? CGPoint(x: 100, y: 100) : CGPoint(x: 300, y: 300))
                    .animation(.default, value: change)
            }
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Animate_GeometryReader()
    }
}
