//
//  StartPage.swift
//  ChildApp
//
//  Created by Александр Шубский on 05.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit

class StartPage: UIViewController {
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    func elementsSettings(){
        appNameLabel.layer.cornerRadius = 5
        appNameLabel.layer.borderColor = UIColor.brown.cgColor
        appNameLabel.layer.borderWidth = 3
        playButton.layer.cornerRadius = 15
        playButton.layer.borderColor = UIColor.brown.cgColor
        playButton.layer.borderWidth = 3
        settingsButton.layer.cornerRadius = 15
        settingsButton.layer.borderColor = UIColor.brown.cgColor
        settingsButton.layer.borderWidth = 3
        appNameLabel.setRoundEdge()
    }
    
    func navBarSettings(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        let backBarButtton = UIBarButtonItem(title: "НАЗАД", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButtton
        
        self.navigationItem.backBarButtonItem?.tintColor = UIColor.brown
        self.navigationItem.backBarButtonItem?.setTitleTextAttributes([.font: UIFont(name: "CCRickVeitchW05", size: 40)!] , for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarSettings()
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
extension UILabel {

    // extension user defined Method
    func setRoundEdge() {
        //How much the edge to be rounded
        self.layer.cornerRadius = 15

        
        // Mask the bound
        self.layer.masksToBounds = true
        //clip the pixel contents
        self.clipsToBounds = true
    }
}

