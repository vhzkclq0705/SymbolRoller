//
//  ViewController.swift
//  SymbolRoller
//
//  Created by 권오준 on 2022/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var symbolImageView: UIImageView!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var reloadButton: UIButton!
    
    let symbols = ["cloud", "sun.min", "wind", "cloud", "moon", "snowflake"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadButton.layer.cornerRadius = reloadButton.bounds.height / 2
        reloadItems()
    }
}

extension ViewController {
    func reloadItems() {
//        // 기존 코드
//        let num = Int.random(in: 0...symbols.count - 1)
//        symbolImageView.image = UIImage(systemName: symbols[num])
//        symbolLabel.text = symbols[num]
        
        // 새로 알게된 코드
        // 배열의 랜덤 아이템을 가져올 때, .randomElement() 메소드를 사용할 수 있다.
        // optional이기 때문에 '!'를 통해 unwrapping.
        let symbol = symbols.randomElement()!
        symbolImageView.image = UIImage(systemName: symbol)
        symbolLabel.text = symbol
    }
    
    @IBAction func didTapReloadButton(_ sender: Any) {
        reloadItems()
    }
}
