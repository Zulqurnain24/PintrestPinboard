//
//  Links.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation

/// Entity that contains the info regarding the links
struct Links : Codable {
    let profile : String?
    let html : String?
    let download : String?
    
    enum CodingKeys: String, CodingKey {
        
        case profile = "self"
        case html = "html"
        case download = "download"
    }
    
    init(profile : String?, html : String?, download : String?) {
        self.profile = profile
        self.html = html
        self.download = download
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        profile = try values.decodeIfPresent(String.self, forKey: .profile)
        html = try values.decodeIfPresent(String.self, forKey: .html)
        download = try values.decodeIfPresent(String.self, forKey: .download)
    }
    
}

extension Links : Equatable {

    static func == (lhs: Links, rhs: Links) -> Bool {
        return lhs.download == rhs.download
               &&
               lhs.html == rhs.html
               &&
               lhs.profile == rhs.profile
    }
    
}
