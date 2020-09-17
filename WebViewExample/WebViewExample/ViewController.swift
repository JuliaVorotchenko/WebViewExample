//
//  ViewController.swift
//  WebViewExample
//
//  Created by Юлия Воротченко on 17.09.2020.
//  Copyright © 2020 Юлия Воротченко. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
      let url = URL(string: "http://www.google.com")
        let request = URLRequest(url: url!)
        self.webView.load(request)
    }

    @IBAction func backOn(_ sender: Any) {
        if self.webView.canGoBack {
            self.webView.goBack()
        }
    }
   
    @IBAction func forwardOn(_ sender: Any) {
        if self.webView.canGoForward {
            self.webView.goForward()
        }
    }
    
    @IBAction func refreshOn(_ sender: Any) {
        self.webView.reload()
    }
    
    @IBAction func stopOn(_ sender: Any) {
        self.webView.stopLoading()
    }
    
}

