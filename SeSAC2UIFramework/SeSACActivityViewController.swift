//
//  SeSACActivityViewController.swift
//  SeSAC2UIFramework
//
//  Created by 강민혜 on 8/16/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    //UIActivityViewController
    public func sesacShowActivityViewController(shareImage: UIImage, shareURL: String, shareText: String) {
        
        let viewController = UIActivityViewController(activityItems: [shareImage, shareURL, shareText], applicationActivities: nil)
        viewController.excludedActivityTypes = [.mail, .assignToContact]
        self.present(viewController, animated: true)
    }
    
}
