//
//  ViewController.swift
//  web+test
//
//  Created by woo on 1/15/25.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    
    @IBOutlet weak var videoView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let video = URL(string: "https://www.naver.com") {
            let request = URLRequest(url: video)
            videoView.load(request)
        } else {
            
        }
        
        
    }

    
}
