//
//  ViewController.swift
//  3+viewcolor
//
//  Created by woo on 1/23/25.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    let randomSource = GKARC4RandomSource()
    var colorR = 0
    var colorG = 0
    var colorB = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomColor()
    }
    
    func randomColor() {
        colorR = randomSource.nextInt(upperBound: 255)
        colorG = randomSource.nextInt(upperBound: 255)
        colorB = randomSource.nextInt(upperBound: 255)
        
        colorLabel.text = "R=\(colorR), G=\(colorG), B=\(colorB)"
    }
    
    // 두번째 화면으로 변수를 전달하기 위한 함수 (화면 전환될 때 실행됨)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let nextvc = segue.destination as! ColorViewController
        
        nextvc.colorR = colorR
        nextvc.colorG = colorG
        nextvc.colorB = colorB
    }
    
    // 두 번째 화면에서 첫번째 화면으로 돌아오기 위한 segue함수. 두번째화면의 뒤로가기 버튼과 연결한다.
    @IBAction func returnTop(segue: UIStoryboardSegue) {}
    


}

