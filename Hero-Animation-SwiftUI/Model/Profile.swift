//
//  Profile.swift
//  Hero-Animation-SwiftUI
//
//  Created by codestorm on 2021/5/5.
//

import SwiftUI

// Profile Mode and Sample Recents Msgs Lists...

struct Profile: Identifiable {
    var id = UUID().uuidString
    var userName: String
    var profile: String
    var lastMsg: String
    var time: String
}

let recents = [
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "iJustine", userName: "pic1", profile: "Hi What'sup", lastMsg: "Fuck off", time: "10:12")
]
