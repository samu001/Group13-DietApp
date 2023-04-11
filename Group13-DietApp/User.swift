//
//  User.swift
//  Group13-DietApp
//
//  Created by Samuel Perez on 3/28/23.
//

import Foundation

struct User {
    let uid, email, profileImageUrl: String
    
    init(data: [String: Any]) {
        self.uid = data["uid"] as? String ?? ""
        self.email = data["email"] as? String ?? ""
        self.profileImageUrl = data["profileImageUrl"] as? String ?? ""
    }
}
