//
//  PresentSignUp.swift
//  HInsta
//
//  Created by Karavella on 01/09/22.
//

import SwiftUI

struct PresentSignUp: View {
    @Environment(\.presentationMode) var pr
    
    @State private var showAlert = false
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var adress = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                
                TextField("FirstName", text: $firstName)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                
                TextField("LastName", text: $lastName)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                TextField("Email", text: $email)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                TextField("Address", text: $adress)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                SecureField("Password", text: $password)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                
                Button {
                    self.showAlert = true
                } label: {
                    HStack{
                      Spacer()
                        Text("Sign Up")
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(45)
                }.alert("Ruyxatdan o`tdingiz", isPresented: $showAlert) {
                    Button("Ok", role: .cancel) {}
                }
                
                Spacer()
                
                HStack(alignment: .center, spacing: 10) {
                    Text("Already have an account?")
                        .foregroundColor(Color.blue)
                        .font(.system(size: 14))
                    
                    Button {
                        self.pr.wrappedValue.dismiss()
                    } label: {
                        Text("SignIn")
                            .font(.system(size: 14))
                            .foregroundColor(Color.blue)
                    }

                }

            }
            .padding(10)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
       
        
    }
}

struct PresentSignUp_Previews: PreviewProvider {
    static var previews: some View {
        PresentSignUp()
    }
}
