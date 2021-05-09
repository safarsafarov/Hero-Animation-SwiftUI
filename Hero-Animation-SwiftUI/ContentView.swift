//
//  ContentView.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/5.
//

import SwiftUI

struct ContentView: View {
    
    // Animation Namespace...
    @Namespace var animation
    
    // StateObject...
    @StateObject var profileData = ProfileDetailModel()
    
    var body: some View {
        Home(animation: animation)
        //setting Environment Object...
            .environmentObject(profileData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
