//
//  PinListingService.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//
import MZNetworking

protocol PinboardListServiceProtocol {
    /// Method for calling webservice to fetch the pinboard object array
    /// - Returns: Pinboard objects
    func getPins(completion: @escaping(WebserviceResponseResult<[PinboardItem]>) -> Void)
    /// method for cancelling pending requests
    func cancelAllPendingRequest()
}

final class PinboardListService : PinboardListServiceProtocol {
    
    public var network: NetworkManagerProtocol = NetworkManager()
    
    func getPins(completion: @escaping(WebserviceResponseResult<[PinboardItem]>) -> Void) {
        let request = PinboardListRequest()
        network.request(request) { (result) in
            completion(result)
        }
    }
    
    func cancelAllPendingRequest() {
        network.cancelAllPendingRequest()
    }
}
