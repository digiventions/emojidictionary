//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Drew Traver on 7/22/17.
//  Copyright © 2017 Digiventions. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLable: UILabel!
    @IBOutlet weak var emojiLable: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
        
        emojiLable.text = emoji
        
        
        if emoji == "😀" {
        
            definitionLable.text = "smiley face"
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
