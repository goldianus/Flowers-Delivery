//
//  SocialMediaImageView.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 07/03/24.
//

import SwiftUI

struct SocialMediaImageView: View {
    var image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
        }
        .padding()
        .frame(width: 50, height: 50)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}
