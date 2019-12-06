//
//  SettingsPage.swift
//  ChildApp
//
//  Created by Александр Шубский on 05.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit

class SettingsPage: UIViewController {

    @IBOutlet weak var soundLabel: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    @IBOutlet weak var vibrationLabel: UILabel!
    @IBOutlet weak var vibrationSwitch: UISwitch!
    
    
    func elementsSettings(){
        soundLabel.layer.borderColor = UIColor.brown.cgColor
        soundLabel.layer.borderWidth = 3
        soundSwitch.layer.cornerRadius = 15
        soundSwitch.layer.borderColor = UIColor.brown.cgColor
        soundSwitch.layer.borderWidth = 3
        vibrationLabel.layer.borderColor = UIColor.brown.cgColor
        vibrationLabel.layer.borderWidth = 3
        vibrationSwitch.layer.cornerRadius = 15
        vibrationSwitch.layer.borderColor = UIColor.brown.cgColor
        vibrationSwitch.layer.borderWidth = 3
        soundLabel.setRoundEdge()
        vibrationLabel.setRoundEdge()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        elementsSettings()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
