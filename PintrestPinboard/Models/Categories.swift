//
//  Categories.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation

/// Entity that contains the info regarding categories
struct Categories : Codable {
    let id : Int?
    let title : String?
    let photo_count : Int?
    let links : Links?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case title = "title"
        case photo_count = "photo_count"
        case links = "links"
    }
    
    init(id : Int?, title : String?, photo_count : Int?, links : Links?) {
        self.id = id
        self.title = title
        self.photo_count = photo_count
        self.links = links
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        photo_count = try values.decodeIfPresent(Int.self, forKey: .photo_count)
        links = try values.decodeIfPresent(Links.self, forKey: .links)
    }
    
}

extension Categories : Equatable {

    static func == (lhs: Categories, rhs: Categories) -> Bool {
        return lhs.id == rhs.id
               &&
               lhs.links == rhs.links
               &&
               lhs.photo_count == rhs.photo_count
               &&
               lhs.title == rhs.title
               
    }
}
