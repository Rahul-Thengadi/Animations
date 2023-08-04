//
//  Animate_Color.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_Color: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            Text("With Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .orange : .blue)
                .padding()
                .animation(.easeOut, value: change)
            
            Text("No Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .orange : .blue)
                .padding()
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_Color_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Color()
    }
}
