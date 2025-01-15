//
//  ViewController.swift
//  web+test
//
//  Created by woo on 1/15/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let url = URL(string: "https://youtu.be/uY-lOn0XwBg?si=rCS4Vb-iKBY_FGSC") {
            //  URL 객체 생성, 생성된 객체 url이 nill이 아니라면
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }


}

