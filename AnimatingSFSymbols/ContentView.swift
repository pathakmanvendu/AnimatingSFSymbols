//
//  ContentView.swift
//  AnimatingSFSymbols
//
//  Created by manvendu pathak  on 23/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animate1 = false
    @State private var animate2 = false
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "ellipsis.message")
                .font(.system(size: 100))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple, .gray)
                .symbolEffect(.bounce,options: .repeat(5) ,value: animate1)
                .onTapGesture {
                    animate1.toggle()
                }
            
            Image(systemName: animate2 ? "checkmark.circle" : "touchid")
                        .font(.system(size: 100))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.purple, .gray)
                        .symbolEffect(.bounce, value: animate2)
                        .contentTransition(.symbolEffect(.replace))
                        .onTapGesture {
                            animate2.toggle()
                        }
                    
                }
        }
        
    }


#Preview {
    ContentView()
}
