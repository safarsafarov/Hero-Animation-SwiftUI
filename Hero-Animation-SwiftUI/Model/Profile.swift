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
    Profile(id: "iJustine", userName: "ijustine", profile: "pic1", lastMsg: "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.", time: "10:12"),
    Profile(id: "James", userName: "jamescool", profile: "pic2", lastMsg: "I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence", time: "10:12"),
    Profile(id: "Kevin", userName: "kevin_zero", profile: "pic3", lastMsg: "I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet", time: "10:12"),
    Profile(id: "Patrick", userName: "patrick_bob", profile: "pic4", lastMsg: "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with", time: "10:12"),
    Profile(id: "Damon", userName: "damonlolz", profile: "pic5", lastMsg: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated", time: "10:12"),
    Profile(id: "Nick", userName: "nickyminaj", profile: "pic6", lastMsg: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.", time: "10:12"),
    Profile(id: "John", userName: "johngreen", profile: "pic7", lastMsg: "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz", time: "10:12")
]
