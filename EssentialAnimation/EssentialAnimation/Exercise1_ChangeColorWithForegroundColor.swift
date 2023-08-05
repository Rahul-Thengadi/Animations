//
//  Exercise1_ChangeColorWithForegroundColor.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 05/08/23.
//

import SwiftUI

struct Exercise1_ChangeColorWithForegroundColor: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            Spacer()
            
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
            .foregroundColor(change ? .red : .orange)
            .opacity(change ? 1 : 0)
            .animation(.default, value: change)
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Exercise1_ChangeColorWithForegroundColor_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1_ChangeColorWithForegroundColor()
    }
}
