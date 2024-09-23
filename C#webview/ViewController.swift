//
//  ViewController.swift
//  C#webview
//
//  Created by m1 on 23/09/2024.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://pwa.africultures.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
