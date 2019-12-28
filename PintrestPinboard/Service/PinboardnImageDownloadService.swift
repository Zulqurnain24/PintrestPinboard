//
//  PinImageDownloadingService.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation
import MZNetworking

typealias ImageResponseResult = (WebserviceResponseResult<Data>, String) -> Void

protocol PinboardnImageDownloadServiceProtocol {
    /// downloading pin board item image
    ///
    /// - Parameter identifier: Respective identifier for the image, url: web address for image, completion: handle success or failure
    func downloadPinImage(for identifier: String, from url: String, completion: @escaping ImageResponseResult)
}

class PinboardnImageDownloadService : PinboardnImageDownloadServiceProtocol {
    
    public var network: NetworkManagerProtocol = NetworkManager()
    
    func downloadPinImage(for identifier: String, from url: String, completion: @escaping ImageResponseResult) {
        let request = PinboardnImageDownloadRequest(from: url, uniqueIdentifier: identifier)
        
        network.download(request) { (result) in
            completion(result, url)
        }
        
    }
}

