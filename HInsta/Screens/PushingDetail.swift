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
            
                    
                    //List
                    List {
                        //header
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                AddStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                            }.padding(5)
                        }
                        
                            PostItems(img_url: "001")
                        
                            PostItems(img_url: "002")
                        
                            PostItems(img_url: "003")
                        
                            PostItems(img_url: "004")
                    }.listStyle(.plain)
                        .padding(.leading, -20)
            .navigationTitle("HInstagram")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "camera").foregroundColor(Color.red)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(
                        action: {
                            UserDefaults.standard.removeObject(forKey: "userId")
                            status.listener()
                        },
                        label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(Color.red)
                        }
                    )
                }
            }
        }.navigationViewStyle(.stack)
    }
}

struct PushingDetail_Previews: PreviewProvider {
    static var previews: some View {
        PushingDetail()
    }
}
