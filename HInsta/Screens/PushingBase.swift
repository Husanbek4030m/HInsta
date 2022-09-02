//
//  PushingBase.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PushingBase: View {
    @EnvironmentObject var status: Status
    
    @Environment(\.presentationMode) var pr
    
    var body: some View {
        NavigationView {
            VStack {
                if self.status.userId != nil {
                    PushingDetail()
                } else {
                    PushingSingIn()
                }
            }.onAppear {
                status.listener()
            }
            .navigationBarTitle("Observ Base", displayMode: .inline)
            .toolbar {
              ToolbarItem(placement: .navigationBarLeading) {
                  Button {
                      pr.wrappedValue.dismiss()
                  } label: {
                      Image(systemName: "chevron.left")
                  }

              }
          }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct PushingBase_Previews: PreviewProvider {
    static var previews: some View {
        PushingBase()
    }
}
