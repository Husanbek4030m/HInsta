//
//  AddStory.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("user")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(35)
            
            VStack{
                Image(systemName: "plus.circle.fill").foregroundColor(.green)
            }.background(.white).cornerRadius(35)
        }
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
