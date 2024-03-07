//
//  LoginOTPManager.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 09/03/24.
//

import SwiftUI

struct LoginOTPManager: View {
    var body: some View {
        OTPInputView()
    }
}

#Preview {
    LoginOTPManager()
}


struct OTPInputView: View {
    @State private var otp: String = ""
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<4, id: \.self) { index in
                OTPTextField(value: self.otp, index: index)
                    .frame(width: 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 1))
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

struct OTPTextField: View {
    @State var value: String
    let index: Int
    let characterLimit = 1
    
    var body: some View {
        TextField("X", text: Binding<String>(
            get: {
                if value.count > index {
                    let index = value.index(value.startIndex, offsetBy: index)
                    return String(value[index])
                }
                return ""
            },
            set: { newValue in
                if newValue.count <= characterLimit {
                    if value.count > index {
                        let index = value.index(value.startIndex, offsetBy: index)
                        value.replaceSubrange(index...index, with: newValue)
                    } else {
                        value += newValue
                    }
                }
            }
        ))
        .multilineTextAlignment(.center)
        .keyboardType(.numberPad)
    }
}
