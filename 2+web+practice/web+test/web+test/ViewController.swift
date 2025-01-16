//
//  ViewController.swift
//  web+test
//
//  Created by woo on 1/15/25.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. 기본 WKWebView
        if let url = URL(string: "https://youtu.be/uY-lOn0XwBg?si=rCS4Vb-iKBY_FGSC") {
            //  URL 객체 생성, 생성된 객체 url이 nil이 아니라면
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
    }

    @IBAction func tapBtn() {
        // 2. SFSafariViewController
        if let url1 = URL(string: "https://music.apple.com/kr/album/firework/1688976919?i=1688976920") {
            // 마찬가지로 url 객체 생성, 생성된 객체 url1이 nil이 아니라면
            let safariView = SFSafariViewController(url: url1)
            safariView.delegate = self
            // SFSafariViewController 객체 생성, delegate(*)를 자신으로 설정
            
            present(safariView, animated: true, completion: nil)
            
        }
        func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
            // SFSafariViewController의 창을 닫으면 (사용자가 Done 버튼 클릭) 자동으로 실행되는 메소드를 정의한다 (선택사항, 로그)
            print("Close")
        }
    }
    
}
