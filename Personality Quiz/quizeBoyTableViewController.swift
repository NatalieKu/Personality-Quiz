//
//  quizeBoyTableViewController.swift
//  Personality Quiz
//
//  Created by MEI KU on 2017/8/15.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class quizeBoyTableViewController: UITableViewController {

    var persons = [Person]()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "PersonalityShow", sender: sender)
  
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     self.tableView.backgroundView = UIImageView(image:#imageLiteral(resourceName: "boybg"))
     self.tableView.backgroundView?.alpha = 0.5
        
        persons.append(Person(iamgeName:"prince", information:"""
原本是一個養尊處優的英俊王子，
但由於被寵壞了，
變得高傲、自私和冷酷，
他因拒絕女巫借宿，
被施咒變成了野獸，
直到他學會愛人和被人愛上，
咒語才解除。
他遇到了漂亮善良的姑娘貝兒，
慢慢地對她產生了感情，
並且不顧自己的生命去救貝兒。
你可能一開始也有點高傲與放縱，
但是愛情會讓你成為一個更好的人。
"""))
        
        persons.append(Person(iamgeName:"gosworth", information:"""
做人忠於本分，
既嚴肅又可愛，
粗心大意但總會得人歡心，
縱使膽子不大，
但傻人有傻福，
人緣甚佳有成為領袖的才華，
只差了一點勁。
"""))
        
        persons.append(Person(iamgeName:"lumiere", information:"""
幽默風趣兼浪漫，
口水多過浪花，
自主性極高，
天馬行空想像力豐富，
有時缺乏實際有力的行動，
需要多點堅持的意志和忍耐。
"""))
  
        persons.append(Person(iamgeName:"marurice", information:"""
貝兒爸爸是一個比較有點兒古怪的人，
他有挺多的小想法，
也不見得被別人理解，
但是他覺得無所謂。
貝兒爸爸還是一個深情的人，
為了讓女兒不被感染，
不得不拋下了重病的媽媽，
卻一直將媽媽放在心裡。
你也是如此，
愛一個人，
不見得要經常掛嘴邊，
但是心中時時會有。
"""))
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let button = sender as? UIButton {
            let personalityViewController = segue.destination as? PersonalityViewController
            personalityViewController?.person = persons[button.tag]
        }
        
    }


}
