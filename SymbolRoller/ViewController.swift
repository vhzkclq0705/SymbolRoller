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
        let num = Int.random(in: 0...symbols.count - 1)
        symbolImageView.image = UIImage(systemName: symbols[num])
        symbolLabel.text = symbols[num]
    }
    
    @IBAction func didTapReloadButton(_ sender: Any) {
        reloadItems()
    }
}
