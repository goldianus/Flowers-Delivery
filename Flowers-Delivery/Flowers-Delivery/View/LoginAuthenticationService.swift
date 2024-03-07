//
//  LoginAuthenticationService.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 09/03/24.
//

import SwiftUI

struct LoginAuthenticationService: View {
    @State private var isSelected: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Image("ic-logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Verification code: 01:05").bold()
                        .font(.title2)
                    Text("Please enter confirmation code from SMS, which was sent on phone number +62 82344543212")
                        .font(.callout)
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                
                VStack {
                    OTPInputView()
                    HStack {
                        RadioButton(selected: $isSelected)
                        Text("Number Verified")
                            .font(.caption)
                    }
                }
                
                Button(action: {
                    print("cek buttton")
                }) {
                    Text("Confirm")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 15)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(50/2)
                        .padding(.vertical)
                }
                
                HStack {
                    Text("Didnt receive the code from SMS?")
                    Button(action: {
                        print("Sign in")
                    }, label: {
                        Text("Resend code Change number")
                            .foregroundColor(.orange)
                    })
                }
                .font(.callout)
                
                Spacer()
                
                HStack {
                    Text("Already have account?")
                    Button(action: {
                        print("Sign in")
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(.orange)
                    })
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    LoginAuthenticationService()
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Mode")
}

