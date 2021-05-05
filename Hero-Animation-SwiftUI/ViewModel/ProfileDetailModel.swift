//
//  ProfileDetailModel.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/11.
//

import SwiftUI

class ProfileDetailModel: ObservableObject {
    @Published var showProfile = false
    
    @Published var selectedProfile : Profile!
}
