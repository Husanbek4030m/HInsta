//
//  PresentBase.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PresentBase: View {
    
    @Environment(\.presentationMode) var pr
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        NavigationView {
            VStack {
                if self.status {
                    PresentDetail()
                } else {
                    PresentSignIn()
                }
            }
            .onAppear {
                let forName = NSNotification.Name("status")
                NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                    print("-----------Call Notif Center")
                    self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                }
            }
            .navigationBarTitle("Notification Base", displayMode: .inline)
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

struct PresentBase_Previews: PreviewProvider {
    static var previews: some View {
        PresentBase()
    }
}
