//
//  ViewControllerStore.swift
//  ClickerGame
//
//  Created by KEVIN KOCH on 10/3/22.
//

import UIKit

class ViewControllerStore: UIViewController {
    
    @IBOutlet weak var storeClickOutput: UILabel!
    var clicksS : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storeClickOutput.text = "Clicks: \(clicksS)"
        // Do any additional setup after loading the view.
    }
    
    
}
