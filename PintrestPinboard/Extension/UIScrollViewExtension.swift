//
//  UIScrollViewExtension.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//


import Foundation
import UIKit

/// UIScrollview extension for implementing the method to detect scroll view bottom reach
extension UIScrollView {
    
    func isReachToBottom() -> Bool {
        return  contentOffset.y > (contentSize.height - frame.height)
    }
}

