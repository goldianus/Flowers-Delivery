//
//  RadioButton.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 06/03/24.
//

import SwiftUI

struct RadioButton: View {
    @Binding var selected: Bool
    
    var body: some View {
        Button(action: {
            self.selected.toggle()
        }) {
            ZStack {
                Circle()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 20, height: 20)
                
                if selected {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                }
            }
        }
    }
}
