//
//  SeSACWebView.swift
//  SeSAC2UIFramework
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit
import WebKit

//WebViewController
open class OpenWebView {

    public enum TransitionStyle {
        case present
        case push
    }
    
    public static func presentWebViewController(_ viewController: UIViewController, url: String, transitionStyle: TransitionStyle) {
        
        let vc = WebViewController() // 전환할 화면을 내부에 미리 구현해둔 것
        vc.url = url // 매개변수로 url 값전달 받음
//        vc.webView = nil // 아래 class에서 webview를 private으로 선언했기 때문에 호출 불가함
        
//        let sb = UIStoryboard(name: "Web", bundle: nil)
//        guard let vc = sb.instantiateViewController(withIdentifier: WebV) as? WebViewController else { return }
        
        switch transitionStyle {
        case .present:
            viewController.present(vc, animated: true)
        case .push:
            viewController.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

class WebViewController: UIViewController {

    private var webView: WKWebView!
    
    var url: String = "https://www.apple.com"
    
    override func loadView() {
        // super.loadView는 일부러 호출하지 않음.
        var configuration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: configuration)
        view = webView
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
        
    }
    

}
