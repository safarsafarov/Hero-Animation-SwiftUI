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
    Profile(id: "iJustine", userName: "Hi what's up how are you doing", profile: "pic1", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "sdfsdfs", userName: "Hi What's up", profile: "pic2", lastMsg: "Hey there!", time: "10:12"),
    Profile(id: "sdfsdfsdf", userName: "Hi what's up how are you doing", profile: "pic3", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "sdfsdfsd", userName: "Hi What's up", profile: "pic4", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "sdfsdf", userName: "Hi what's up how are you doing", profile: "pic5", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "asdasdasd", userName: "Hi swhat's up how are you doing hey", profile: "pic6", lastMsg: "Fuck off", time: "10:12"),
    Profile(id: "1231231243", userName: "Hi What'sup", profile: "pic7", lastMsg: "Fuck off", time: "10:12")
]
