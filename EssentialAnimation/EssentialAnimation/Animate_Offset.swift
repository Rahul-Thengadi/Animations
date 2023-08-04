//
//  Animate_Offset.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_Offset: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(change ? CGSize(width: 140, height: 0)
                               : CGSize(width: -140, height: 0))
                .animation(.default, value: change)
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_Offset_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Offset()
    }
}
