//
//  PresentSignIn.swift
//  HInsta
//
//  Created by Karavella on 01/09/22.
//

import SwiftUI

struct PresentSignIn: View {
    @Environment(\.presentationMode) var pr
    //@State private var showAlert = false
    @State var showDetail = false
    @State var userId = ""
    @State var userPw = ""
    
    var body: some View {            
            VStack(spacing: 10) {
                Spacer()
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(40)
                
                
                TextField("User Id", text: $userId)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                SecureField("User PW", text: $userPw)
                    .font(.system(size: 18))
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                
                Button {
                    UserDefaults.standard.set(true, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                   // self.showAlert = true
                } label: {
                    HStack {
                        Spacer()
                        Text("Sign In").foregroundColor(Color.white)
                        Spacer()
                    }
                    .frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(25)
                }
                /*.alert("Tizimga kirdingiz", isPresented: $showAlert) {
                    Button("Ok", role: .cancel) {}
                }*/
                
                Spacer()
                
                HStack(alignment: .center, spacing: 10) {
                    Text("Don't have an account?")
                        .foregroundColor(Color.blue)
                        .font(.system(size: 14))
                    
                    Button {
                        self.showDetail = true
                        
                    } label: {
                        Text("SignUp")
                            .font(.system(size: 14))
                    }.sheet(isPresented: $showDetail) {
                        PresentSignUp()
                    }

                }
            }.padding()             
        
    }
}

struct PresentSignIn_Previews: PreviewProvider {
    static var previews: some View {
        PresentSignIn()
    }
}
