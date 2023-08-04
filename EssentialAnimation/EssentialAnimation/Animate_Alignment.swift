//
//  Animate_Alignment.swift
//  EssentialAnimation
//
//  Created by rahul thengadi on 04/08/23.
//

import SwiftUI

struct Animate_Alignment: View {
    @State private var change = false

    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: change ? .leading : .trailing) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                HStack {
                    Spacer()
                }
            }
            
            HStack(alignment: change ? .top : .bottom) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: change)
                VStack {
                    Spacer()
                }
            }
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Alignment()
    }
}
