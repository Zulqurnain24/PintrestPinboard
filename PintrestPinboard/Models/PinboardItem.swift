//
//  PinboardItem.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation

/// Pinboard Item entity
struct PinboardItem : Codable {
    let id : String?
    let created_at : String?
    let width : Int?
    let height : Int?
    let color : String?
    let likes : Int?
    let liked_by_user : Bool?
    let user : User?
    let current_user_collections : [String]?
    let urls : Urls?
    let categories : [Categories]?
    let links : Links?
    
    var categoriesString: String {
        guard let categories = categories else { return "" }
        
        return categories
            .compactMap({ (category) -> String? in
                return category.title
            })
            .joined(separator: ", ")
    }
    
    var author: String {
        guard let user = user else { return "" }
        return user.name ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case created_at = "created_at"
        case width = "width"
        case height = "height"
        case color = "color"
        case likes = "likes"
        case liked_by_user = "liked_by_user"
        case user = "user"
        case current_user_collections = "current_user_collections"
        case urls = "urls"
        case categories = "categories"
        case links = "links"
    }
    
    init(id : String?, created_at : String?, width : Int?, height : Int?, color : String?, likes : Int?, liked_by_user : Bool?, user : User?, current_user_collections : [String]?, urls : Urls?, categories : [Categories]?, links : Links?) {
        self.id = id
        self.created_at = created_at
        self.width = width
        self.height = height
        self.color = color
        self.likes = likes
        self.liked_by_user = liked_by_user
        self.user = user
        self.current_user_collections = current_user_collections
        self.urls = urls
        self.categories = categories
        self.links = links
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        color = try values.decodeIfPresent(String.self, forKey: .color)
        likes = try values.decodeIfPresent(Int.self, forKey: .likes)
        liked_by_user = try values.decodeIfPresent(Bool.self, forKey: .liked_by_user)
        user = try values.decodeIfPresent(User.self, forKey: .user)
        current_user_collections = try values.decodeIfPresent([String].self, forKey: .current_user_collections)
        urls = try values.decodeIfPresent(Urls.self, forKey: .urls)
        categories = try values.decodeIfPresent([Categories].self, forKey: .categories)
        links = try values.decodeIfPresent(Links.self, forKey: .links)
    }
    
}

extension PinboardItem : Equatable {
    static func == (lhs: PinboardItem, rhs: PinboardItem) -> Bool {
        return lhs.author == rhs.author
               &&
               lhs.categories == rhs.categories
               &&
               lhs.categoriesString == rhs.categoriesString
               &&
               lhs.color == rhs.color
               &&
               lhs.created_at == rhs.created_at
               &&
               lhs.height == rhs.height
               &&
               lhs.id == rhs.id
               &&
               lhs.liked_by_user == rhs.liked_by_user
               &&
               lhs.likes == rhs.likes
               &&
               lhs.links == rhs.links
               &&
               lhs.links == rhs.links
               &&
               lhs.urls == rhs.urls
               &&
               lhs.user == rhs.user
               &&
               lhs.width == rhs.width
               
    }

}
