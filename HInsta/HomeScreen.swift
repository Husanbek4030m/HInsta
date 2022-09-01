//
//  HomeScreen.swift
//  HInsta
//
//  Created by Karavella on 01/09/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    PushingSingIn()
                } label: {
                    Text("Pushing Sign in").padding(10)
                }
                
                NavigationLink {
                    PresentSignIn()
                } label: {
                    Text("Present Sign in").padding(10)
                }


            }
            .navigationBarTitle("Instagram Sign", displayMode: .inline)
        }
        
        
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
