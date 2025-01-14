//
//  ViewController.swift
//  1+rockscissor
//
//  Created by woo on 1/10/25.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    let randomSource = GKARC4RandomSource() // 랜덤한 숫자를 생성하기 위한 '객체'를 선언한다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func doComputer(player: Int) { // 상대쪽의 가위, 바위, 보는 사용자가 버튼을 누를 때마다 랜덤하게 생성되어야 한다.
        let result = randomSource.nextInt(upperBound: 3) // 0부터 2까지의 숫자 중 랜덤한 숫자를 생성하는 메소드 호출
        var msg = ""    // message에 print할 판정 내용
        
        switch(result) {
        case 0:     // 가위
            computerImage.image = UIImage(named: "scissor_you.png")
            
            switch(player) {
            case 0:
                msg = "DRAW!"
            case 1:
                msg = "YOU WIN"
            case 2:
                msg = "YOU LOSE"
            default:
                break
            }
        case 1:     // 바위
            computerImage.image = UIImage(named: "rock_you.png")
            
            switch(player) {
            case 0:
                msg = "YOU LOSE"
            case 1:
                msg = "DRAW!"
            case 2:
                msg = "YOU WIN"
            default:
                break
            }
        case 2:     // 보
            computerImage.image = UIImage(named: "paper_you.png")
            
            switch(player) {
            case 0:
                msg = "YOU WIN"
            case 1:
                msg = "YOU LOSE"
            case 2:
                msg = "DRAW!"
            default:
                break
            }
        default:
            break
        }
        messageLabel.text = msg
    }

    @IBAction func tapReset() {
        // '준비' 버튼을 누르면 두 이미지 모두 기본 화면인 커비로 설정되게 한다.
        computerImage.image = UIImage(named: "default_you.jpg")
        playerImage.image = UIImage(named: "default_me.jpg")
        
        messageLabel.text = "Ready ..."
    }
    
    @IBAction func scissorButton() {
        playerImage.image = UIImage(named: "scissor_me.png")
        doComputer(player: 0)
    }
    @IBAction func rockButton() {
        playerImage.image = UIImage(named: "rock_me.png")
        doComputer(player: 1)
    }
    @IBAction func paperButton() {
        playerImage.image = UIImage(named: "paper_me.png")
        doComputer(player: 2)
    }
    
}
