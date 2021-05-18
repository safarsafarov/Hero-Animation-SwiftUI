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
    @GestureState var offset: CGFloat = 0
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            if profileData.selectedProfile != nil{
                
                if profileData.showEnlargedImage {
                    
                    Image(profileData.selectedProfile.profile)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: profileData.selectedProfile.id, in: animation)
                        .frame(width: .infinity, height: .infinity)
                        //Background Color...
                        .offset(y: profileData.offset)
                        .gesture(DragGesture().updating($offset, body: { (value, out, _) in
                            out = value.translation.height
                        }).onEnded({ (value) in
                            let offset = profileData.offset > 0 ? profileData.offset: -profileData.offset
                            withAnimation{
                                if offset > 200{
                                    profileData.showProfile.toggle()
                                    profileData.showEnlargedImage.toggle()
                                    profileData.selectedProfile = nil
                                }
                                profileData.offset = 0
                            }
                            
                        }))
//                        .background(Color("bg").opacity(getOpacity()).ignoresSafeArea())
                        .background(
                            Image("bg")
                                .opacity(getOpacity()).ignoresSafeArea()
                        )
                    
                    HStack(spacing: 20){
                        
                        Button(action: {
                            
                            withAnimation{
                                profileData.showEnlargedImage.toggle()
                                profileData.showProfile.toggle()
                                profileData.selectedProfile = nil
                            }
                        }, label: {
                            Image(systemName: "arrow.left")
                                .font(.title2)
                                .foregroundColor(.white)
                        })
                        
                        Text(profileData.selectedProfile.userName)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "TEXT_(profileData.selectedProfile.id", in: animation)
                        
                        Spacer()
                    }
                    .padding()
                }
                else{
                    
                    Button(action: {
                        
                        withAnimation(.easeInOut) {
                            profileData.showEnlargedImage.toggle()
                        }
                    }, label: {
                        Image(profileData.selectedProfile.profile)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay(TitleView(recent: profileData.selectedProfile, animation: animation), alignment: .top)
                    })
                    .overlay(BottomActions().offset(y: 50),alignment: .bottom)
                    .matchedGeometryEffect(id: profileData.selectedProfile.id, in: animation)
                    .frame(width: 300, height: 300)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        Image("bg")
                            .opacity(0.2)
                            .ignoresSafeArea()
                            .onTapGesture {
                                profileData.showProfile.toggle()
                                profileData.selectedProfile = nil
                            }
                    )
                }
            }
        }
        .onChange(of: offset, perform: { value in
            profileData.offset = offset
        })
    }
    
    func getOpacity()->Double {
        
        let offset = profileData.offset > 0 ? profileData.offset : -profileData.offset
        
        let progres = offset / 200
        
        return 1 - Double(progres)
    }
}


struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TitleView: View {
    var recent: Profile
    var animation: Namespace.ID
    
    var body: some View{
        Text(recent.userName)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .matchedGeometryEffect(id: "TEXT_(recent.id)", in: animation)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .lineLimit(1)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(
                Image("bg")
                    .opacity(0.35)
            )
    }
}
// Bottom Actions...

struct BottomActions: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "message.fill")
                    .font(.title2)
                    .foregroundColor(Color(.green))
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "info.circle.fill")
                    .font(.title2)
                    .foregroundColor(Color(.green))
            })
        }
        .padding(.horizontal, 50)
        // default frame...
        .frame(width: 300, height: 50)
        .background(Color.white)
    }
}

