//
//  RecentRowView.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/5.
//

import SwiftUI

struct RecentRowView: View {
    var recent: Profile
    var animation: Namespace.ID
    var body: some View {
        HStack(spacing: 15){
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(recent.profile)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .matchedGeometryEffect(id: recent.id, in: animation)
                    .frame(width: 60, height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            })
            .buttonStyle(PlainButtonStyle())
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text(recent.userName)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(recent.lastMsg)
                            .font(.caption)
                            .foregroundColor(.gray)
                    })
                    Spacer(minLength: 10)
                    
                    Text(recent.time)
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                Divider()
            }
        }
        .padding(.horizontal)
    }
}

struct RecentRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
