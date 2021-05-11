//
//  ProfileDetailView.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/5.
//

import SwiftUI

struct ProfileDetailView: View {
    var animation: Namespace.ID
    @EnvironmentObject var profileData: ProfileDetailModel
    var body: some View {
        if profileData.selectedProfile != nil{
            Image(profileData.selectedProfile.profile)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: profileData.selectedProfile.id, in: animation)
                .frame(width: 300, height: 300)
                //Background Color...
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    
                    Color("bg")
                        .opacity(0.2)
                        .ignoresSafeArea()
                        // closing when tapping on background...
                        .onTapGesture {
                            withAnimation{
                                profileData.showProfile.toggle()
                                profileData.selectedProfile = nil
                            }
                        }
                )
        }
    }
}

struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
