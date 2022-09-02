//
//  PresentDetail.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PresentDetail: View {
    var body: some View {
        NavigationView {
            VStack{
                Button {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                } label: {
                    Text("Logout")
                }

            }
        }
        .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
        .navigationBarTitle("Instagram", displayMode: .inline)
    }
}

struct PresentDetail_Previews: PreviewProvider {
    static var previews: some View {
        PresentDetail()
    }
}
