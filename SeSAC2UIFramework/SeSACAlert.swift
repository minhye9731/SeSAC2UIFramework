//
//  SeSACAlert.swift
//  SeSAC2UIFramework
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

extension UIViewController {
    
    open func testOpen() { }
    
    public func showSesacAlert(title: String, message: String, buttonTitle: String, buttonAction: @escaping((UIAlertAction) -> Void)) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: true)
        
    }
    
    internal func testInternal() { }
    
    fileprivate func testFileprivate() { }
    
    private func testPrivate() { }
    
    
}


