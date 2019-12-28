//
//  PinImageDownloadingRequest.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation
import MZNetworking

/// Request class for Pinboard Images
final class PinboardnImageDownloadRequest: Downloadable {
    
    typealias Response = Data
    internal var url: String
    internal var identifier: String

    var endpoint: WebserviceRequestConvertible {
        
        return WebserviceRequestConverter.init( method: .get, path: url, name: Constants.pinboardImageDownloading, requestUniqueIdentifier: identifier)
    }

    init(from url: String, uniqueIdentifier: String) {
        self.url = url
        self.identifier = uniqueIdentifier
    }
}

