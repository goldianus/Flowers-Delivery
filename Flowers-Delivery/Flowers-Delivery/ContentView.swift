//
//  ContentView.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 06/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CreateAccountViewController()
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Mode")
}
