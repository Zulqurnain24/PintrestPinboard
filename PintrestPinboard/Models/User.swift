//
//  User.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation

/// User entity
struct User : Codable {
    let id : String?
    let username : String?
    let name : String?
    let profile_image : Profile_image?
    let links : Links?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case username = "username"
        case name = "name"
        case profile_image = "profile_image"
        case links = "links"
    }
    
    init(id : String?, username : String?, name : String?, profile_image : Profile_image?, links : Links?) {
        self.id = id
        self.username = username
        self.name = name
        self.profile_image = profile_image
        self.links = links
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        username = try values.decodeIfPresent(String.self, forKey: .username)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        profile_image = try values.decodeIfPresent(Profile_image.self, forKey: .profile_image)
        links = try values.decodeIfPresent(Links.self, forKey: .links)
    }
    
}

extension User : Equatable {

    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
               &&
               lhs.links == rhs.links
               &&
               lhs.name == rhs.name
               &&
               lhs.profile_image == rhs.profile_image
               &&
               lhs.username == rhs.username
    }
}
