//
//  CreateAccountViewController.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 06/03/24.
//

import SwiftUI

struct CreateAccountViewController: View {
    
    @State private var phoneNumber: String = ""
    @State private var isSelected: Bool = false
    @State private var isLoggedin: Bool = false
    
    let defaultCountryCode = "+62"
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image("ic-logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Enter your phone number").bold()
                        .font(.title2)
                    Text("We will send SMS with confirmation code.")
                        .font(.callout)
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                
                HStack {
                    Spacer()
                    Text(defaultCountryCode)
                        .padding()
                        .foregroundColor(.gray)
                        .cornerRadius(8)
                        .padding(.horizontal, 4)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 1))
                        .background(Color(UIColor.systemGray6))
                        .disabled(true)
                    
                    
                    TextField("xxxx xxxx xxxx", text: $phoneNumber)
                        .padding()
                        .cornerRadius(8)
                        .padding(.horizontal, 4)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 1))
                        .background(Color(UIColor.systemGray6))
                        .keyboardType(.numberPad)
                    
                    Spacer()
                }
                
                HStack {
                    RadioButton(selected: $isSelected)
                    Text("Entering the code means that you agree to the Terms of Services and the Personal Data Processing Policy")
                        .font(.caption)
                }
                .padding(.vertical, 16)
                
                Button(action: {
                    
                }) {
                    Text("Send")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 15)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(50/2)
                        .padding(.vertical)
                }
                .disabled(phoneNumber.isEmpty)
                .opacity((phoneNumber.isEmpty) ? 0.5 : 1)
                
                ZStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                    Text("or")
                        .frame(width: 40, height: 40)
                        .background(.black)
                }
                .padding(.vertical, 16)
                
                Text("Sign In with your social media account")
                    .font(.callout)
                
                HStack(spacing: 20) {
                    SocialMediaImageView(image: Image("google"))
                    SocialMediaImageView(image: Image("google"))
                    SocialMediaImageView(image: Image("google"))
                }
                
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
            .padding()
        }
        .sheet(isPresented: $isLoggedin, content: {
            Text("Welcome \(phoneNumber)")
        })
    }
}

#Preview {
    CreateAccountViewController()
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Mode")
}
