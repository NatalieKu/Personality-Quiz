//
//  PersonalityViewController.swift
//  Personality Quiz
//
//  Created by MEI KU on 2017/8/15.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class PersonalityViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var personalityLabel: UILabel!
  
    var person : Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            
            personalityLabel.text = person.information
            imageView.image = UIImage(named: person.iamgeName)
        
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

