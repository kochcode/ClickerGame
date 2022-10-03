//
//  ViewController.swift
//  ClickerGame
//
//  Created by KEVIN KOCH on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var clicks = 0
    @IBAction func clickInput(_ sender: UIButton) {
        clicks += 1
        clickOutput.text = "Clicks: \(clicks)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "storeSegue"{
             let clickStore = segue.destination as! ViewControllerStore
            clickStore.clicksS = clicks
        }
    }

}

