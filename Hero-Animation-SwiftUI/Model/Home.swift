//
//  Home.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/5.
//

import SwiftUI

struct Home: View {
    var animation: Namespace.ID
    @EnvironmentObject var profileData: ProfileDetailModel
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(alignment: .leading, spacing: 1, content: {
                
                Text("HERO")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.top)
                
                ForEach(recents){recent in
                    RecentRowView(recent: recent,animation: animation)
                }
            })
        })
        .overlay(
            
            ZStack(alignment: .top, content: {
                
                if profileData.showProfile {
                    ProfileDetailView(animation: animation)
                }
            })
        )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
