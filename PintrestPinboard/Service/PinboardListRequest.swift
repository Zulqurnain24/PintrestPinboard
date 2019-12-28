//
//  PinListingRequest.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation
import MZNetworking

///Response class for Pinboard Items fetched from webservice
final class PinboardListRequest: JsonProvider {
    
    typealias Response = [PinboardItem]
    
    var endpoint: WebserviceRequestConvertible {
        
        return WebserviceRequestConverter.init(method: .get, path: Constants.pinboardImageURL, name: Constants.pinboardListTitle)
    }
}

