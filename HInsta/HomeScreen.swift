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
            VStack(alignment: .center, spacing: 10, content: {
                NavigationLink {
                    PushingBase()
                } label: {
                    Text("Observable Object").padding(10)
                }

                NavigationLink {
                    PresentBase()
                } label: {
                    Text("Notification Center").padding(10)
                }
            })
        }
        
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
