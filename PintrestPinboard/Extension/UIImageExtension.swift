//
//  UIImageExtension.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation
import UIKit

/// UIImage extension for scaling the image as per requirement
extension UIImage {
    func scaleTo(_ size:CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
        self.draw(in: CGRect(origin: CGPoint.zero, size: CGSize(width: size.width, height: size.height)))
        let image:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

