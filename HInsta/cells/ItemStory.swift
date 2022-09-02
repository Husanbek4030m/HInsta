//
//  ItemStory.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        
        Image("user")
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
            .cornerRadius(35)
            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
        
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
