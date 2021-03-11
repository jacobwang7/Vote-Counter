//
//  ViewController.swift
//  Caucus Count
//
//  Created by Jacob Wang on 3/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var warrenLabel: UILabel!
    @IBOutlet weak var sandersLabel: UILabel!
    @IBOutlet weak var klobucharLabel: UILabel!
    @IBOutlet weak var buttigegLabel: UILabel!
    @IBOutlet weak var bloombergLabel: UILabel!
    @IBOutlet weak var bidenLabel: UILabel!
    
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    
    
    @IBOutlet weak var warrenStepper: UIStepper!
    @IBOutlet weak var sandersStepper: UIStepper!
    @IBOutlet weak var klobucharStepper: UIStepper!
    @IBOutlet weak var buttigegStepper: UIStepper!
    @IBOutlet weak var bloombergStepper: UIStepper!
    @IBOutlet weak var bidenStepper: UIStepper!
    
    var candidates = ["Warren", "Sanders", "Klobuchar", "Buttigeg", "Bloomberg", "Biden"]
    var voteCount = [0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image0.image = UIImage(named: candidates[0])
        image1.image = UIImage(named: candidates[1])
        image2.image = UIImage(named: candidates[2])
        image3.image = UIImage(named: candidates[3])
        image4.image = UIImage(named: candidates[4])
        image5.image = UIImage(named: candidates[5])
        
        warrenLabel.text = "\(candidates[0]): \(voteCount[0])"
        sandersLabel.text = "\(candidates[1]): \(voteCount[1])"
        klobucharLabel.text = "\(candidates[2]): \(voteCount[2])"
        buttigegLabel.text = "\(candidates[3]): \(voteCount[3])"
        bloombergLabel.text = "\(candidates[4]): \(voteCount[4])"
        bidenLabel.text = "\(candidates[5]): \(voteCount[5])"
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        voteCount[sender.tag] = Int(sender.value)
        warrenLabel.text = "\(candidates[0]): \(voteCount[0])"
        sandersLabel.text = "\(candidates[1]): \(voteCount[1])"
        klobucharLabel.text = "\(candidates[2]): \(voteCount[2])"
        buttigegLabel.text = "\(candidates[3]): \(voteCount[3])"
        bloombergLabel.text = "\(candidates[4]): \(voteCount[4])"
        bidenLabel.text = "\(candidates[5]): \(voteCount[5])"
    }
    
//    @IBAction func buttigegStepperPressed(_ sender: Any) {
//        buttigegLabel.text = "Buttigeg: \(Int(buttigegStepper.value))"
//    }
//    @IBAction func klobucharStepperPressed(_ sender: Any) {
//        klobucharLabel.text = "Klobuchar: \(Int(klobucharStepper.value))"
//    }
//    @IBAction func bloombergStepperPressed(_ sender: Any) {
//        bloombergLabel.text = "Bloomberg: \(Int(bloombergStepper.value))"
//    }
//    @IBAction func bidenStepperPressed(_ sender: Any) {
//        bidenLabel.text = "Biden: \(Int(bidenStepper.value))"
//    }
//    @IBAction func sandersStepperPressed(_ sender: Any) {
//        sandersLabel.text = "Sanders: \(Int(sandersStepper.value))"
//    }
//    @IBAction func warrenStepperPressed(_ sender: Any) {
//        warrenLabel.text = "Warren: \(Int(warrenStepper.value))"
//    }
    
    

}

