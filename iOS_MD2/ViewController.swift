//
//  ViewController.swift
//  iOS_MD2
//
//  Created by Aivis Skangalis on 08/04/2020.
//  Copyright © 2020 Aivis Skangalis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var luksoforsView: UIView!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var luksoforsEmoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        luksoforsView.layer.cornerRadius = 100
        luksoforsView.backgroundColor = #colorLiteral(red: 0.9054201749, green: 0.09178006799, blue: 0.02278713056, alpha: 1)
        luksoforsView.layer.borderWidth = 2
        luksoforsView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
    }
    
    
    @IBAction func timePicker(_ sender: UIDatePicker) {
//        print(sender.date)
        let unixTime = sender.date.timeIntervalSince1970
//        print(unixTime)
        let unixTimeInt:Int = Int(unixTime)
        let time = (unixTimeInt-10800)%420
        print(time)
        if time <= 60 {
            luksoforsView.backgroundColor = #colorLiteral(red: 0.2526060312, green: 0.8463406736, blue: 0.1683230162, alpha: 1)

        }
        else if time == 120{
            luksoforsView.backgroundColor = #colorLiteral(red: 0.9054201749, green: 0.8085454219, blue: 0.03678743956, alpha: 1)

        }
        else if time > 120 && time < 360
        {
            luksoforsView.backgroundColor = #colorLiteral(red: 0.9054201749, green: 0.09178006799, blue: 0.02278713056, alpha: 1)

        }
        else if time == 360 {
            luksoforsView.backgroundColor = #colorLiteral(red: 0.9054201749, green: 0.8085454219, blue: 0.03678743956, alpha: 1)

        }
    }
    
    
}


