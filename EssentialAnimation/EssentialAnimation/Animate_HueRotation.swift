//
//  Animate_HueRotation.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_HueRotation: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 340, height: 240)
                    .padding()
                    .hueRotation(Angle.degrees(change ? 170 : 0))
                    .animation(.easeInOut, value: change)
            }
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }
        }
    }
}

struct Animate_HueRotation_Previews: PreviewProvider {
    static var previews: some View {
        Animate_HueRotation()
    }
}
