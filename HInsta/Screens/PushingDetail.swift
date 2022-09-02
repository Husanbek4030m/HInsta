//
//  PushingDetail.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PushingDetail: View {
    @EnvironmentObject var status:Status
    
    
    var body: some View {
        NavigationView {
            VStack{
                Button {
                    UserDefaults.standard.removeObject(forKey: "userId")
                    status.listener()
                } label: {
                    Text("Logout")
                }

            }
        }
        .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
        .navigationBarTitle("Instagram", displayMode: .inline)
    }
}

struct PushingDetail_Previews: PreviewProvider {
    static var previews: some View {
        PushingDetail()
    }
}
