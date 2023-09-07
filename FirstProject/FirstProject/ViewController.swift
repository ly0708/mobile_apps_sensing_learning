//
//  ViewController.swift
//  FirstProject
//
//  Created by Larry Yu on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            firstView.alpha = 1
            secondView.alpha = 0
            break
        case 1:
            firstView.alpha = 0
            secondView.alpha = 1
            break
        default:
            break
        }
    }
    
}
