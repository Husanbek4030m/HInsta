//
//  PostItems.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct PostItems: View {
    var img_url = "001"
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            HStack(spacing: 10) {
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(35)
                
                Text("Bahora").font(.system(size: 16)).fontWeight(.bold)
                
                Text("follow").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color.red)
                
                Spacer()
                
                Image(systemName: "location")
            }.padding(5)
            
            HStack(spacing: 0){
                Image(img_url).resizable().scaledToFit().frame(width: UIScreen.screenWidth / 2)
                Image(img_url).resizable().scaledToFit().frame(width: UIScreen.screenWidth / 2)
            }.padding(.vertical, 5)
            
            HStack{
                Image(systemName: "heart")
                Image(systemName: "text.bubble")
                Image(systemName: "arrowshape.turn.up.left")
                
                Spacer()
                
                Image(systemName: "bookmark")
                
            }.padding(5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Liked by Husan and 101 others").font(.system(size: 12))
                
                Text("Husan Thanks for sharing this post Thansk for sharing").font(.system(size: 12)).foregroundColor(Color.black.opacity(0.8))
                
            }.padding(5)
            
        }
    }
}

struct PostItems_Previews: PreviewProvider {
    static var previews: some View {
        PostItems()
    }
}
