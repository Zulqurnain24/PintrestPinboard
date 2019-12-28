//
//  Profile_image.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//


import Foundation

/// Entity that contains info regarding the profile image
struct Profile_image : Codable {
    let small : String?
    let medium : String?
    let large : String?
    
    enum CodingKeys: String, CodingKey {
        
        case small = "small"
        case medium = "medium"
        case large = "large"
    }
    
    init(small : String?, medium : String?, large : String?) {
        self.small = small
        self.medium = medium
        self.large = large
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        small = try values.decodeIfPresent(String.self, forKey: .small)
        medium = try values.decodeIfPresent(String.self, forKey: .medium)
        large = try values.decodeIfPresent(String.self, forKey: .large)
    }
    
}

extension Profile_image : Equatable {

    static func == (lhs: Profile_image, rhs: Profile_image) -> Bool {
        return lhs.large == rhs.large
               &&
               lhs.medium == rhs.medium
               &&
               lhs.small == rhs.small
    }
}
