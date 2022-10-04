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
    var multi : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        storeClickOutput.text = "Clicks: \(clicksS)"
        // Do any additional setup after loading the view.
    }
    @IBAction func timesTwo(_ sender: UIButton) {
        if clicksS >= 20{
            clicksS -= 20
            multi = 2
        }
    }
    @IBAction func timesThree(_ sender: UIButton) {
        if clicksS >= 80{
            clicksS -= 80
            multi = 3
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "storeSegue"{
             let clickMain = segue.destination as! ViewController
            clickMain.clicks = clicksS
            clickMain.multiP = multi
        }
    }
}
