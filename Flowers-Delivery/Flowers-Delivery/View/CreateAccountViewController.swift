//
//  CreateAccountViewController.swift
//  Flowers-Delivery
//
//  Created by Goldianus Solangius on 06/03/24.
//

import SwiftUI

struct CreateAccountViewController: View {
    @State private var isLoggedin: Bool = false
    @State private var countryCode: String = ""
    @State private var phoneNumber: String = ""
    @State private var isSelected: Bool = false
    
    let defaultCountryCode = "+62"
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Enter your phone number").bold()
                        .font(.title2)
                    Text("We will send SMS with confirmation code.")
                }
                
                HStack {
                    Text(defaultCountryCode)
                        .padding()
                        .foregroundColor(.gray)
                        .cornerRadius(8)
                        .padding(.horizontal)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                        .background(Color(UIColor.systemGray6))
                        .disabled(true)
                    
                    
                    TextField("xxxx xxxx xxxx", text: $phoneNumber)
                        .padding()
                        .cornerRadius(8)
                        .padding(.horizontal)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                        .background(Color(UIColor.systemGray6))
                        .keyboardType(.numberPad)
                    
                    Spacer()
                }
                
                HStack {
                    RadioButton(selected: $isSelected)
                    Text("Entering the code means that you agree to the Terms of Services and the Personal Data Processing Policy")
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Send")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                .disabled(countryCode.isEmpty || phoneNumber.isEmpty)
                .opacity((countryCode.isEmpty || phoneNumber.isEmpty) ? 0.5 : 1)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Buat Akun")
        }
        .sheet(isPresented: $isLoggedin, content: {
            Text("Welcome \(phoneNumber)")
        })
    }
}

#Preview {
    CreateAccountViewController()
}
