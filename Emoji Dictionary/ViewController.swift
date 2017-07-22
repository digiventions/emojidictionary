//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Drew Traver on 7/14/17.
//  Copyright © 2017 Digiventions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji

        
    }
    
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with no glasses"
        
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with glasses"
        
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😇"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley Angle face"
        

        let emoji4 = Emoji()
        emoji4.stringEmoji = "❤️"
        emoji4.birthYear = 2013
        emoji4.category = "Heart"
        emoji4.definition = "A red hart"
        
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😆"
        emoji5.birthYear = 2014
        emoji5.category = "Smiley"
        emoji5.definition = "A smiley face with no glasses"
        
        
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤡"
        emoji6.birthYear = 2015
        emoji6.category = "Smiley"
        emoji6.definition = "A clown"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

