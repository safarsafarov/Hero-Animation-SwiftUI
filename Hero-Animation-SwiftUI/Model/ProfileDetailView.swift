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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ContentView()
    }
}
