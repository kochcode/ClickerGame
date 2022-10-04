//
//  ViewController.swift
//  ClickerGame
//
//  Created by KEVIN KOCH on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clickOutput: UILabel!
    var multiP : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("test")
    }
    var clicks = 0
    
    @IBAction func clickInput(_ sender: UIButton) {
        if multiP == 1{
            clicks += 1
        }
        else if multiP == 2{
            clicks += 2
        }
        else if multiP == 3{
            clicks += 3
        }
        clickOutput.text = "Clicks: \(clicks)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "storeSegue"{
             let clickStore = segue.destination as! ViewControllerStore
            clickStore.clicksS = clicks
        }
    }

}

