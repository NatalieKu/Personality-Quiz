//
//  quizGirlTableViewController.swift
//  Personality Quiz
//
//  Created by MEI KU on 2017/8/16.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class quizGirlTableViewController: UITableViewController {
    
    var persons = [Person]()
    let questions = [QAlist(question:"哪種飲料妳喜歡？", choice:["酒","茶","咖啡", "果汁"]),QAlist(question:"哪個房間你一個人待著最舒服？", choice:["餐廳","客廳","臥房","書房"]),QAlist(question:"如果要跟王子一起跳舞你穿什麼顏色的禮服？", choice:["粉紅色","天藍色","純白色", "澄黃色"])]
   

    @IBOutlet var choiceButton: [UIButton]!
    
    @IBOutlet weak var questionLabel: UILabel!
    var index = 0
    var point0 = 0
    var point1 = 0
    var point2 = 0
    var point3 = 0
    var sum = 0

    
    @IBOutlet weak var sumLabel: UILabel!
    /*
    @IBAction func buttonPressed(_ sender: UIButton) {
         performSegue(withIdentifier: "PersonalityGirl", sender: sender)
        
    }
 */
    @IBAction func ButtonPressed(_ sender: UIButton) {
       
            NextQuestion()
      
       
        if sender.tag == 0 {
            point0 = point0 + 1
        }
        if sender.tag == 1 {
            point1 = point1 + 2
        }
        
        if sender.tag == 2 {
            point2 = point2 + 3
            
        }
        
        if sender.tag == 3 {
            point3 = point3 + 4
        }
        
        sum = point0 + point1 + point2 + point3
        sumLabel.text = "\(sum)"
        
        
        
        }
    
 
    @IBAction func gender(_ sender: UISegmentedControl) {
        
        
        
 
        if genderSegment.selectedSegmentIndex == 1 {
        if sum > 9 && sum < 13 {
            submitButton2.isHidden = false
        }
        
        else if sum > 5 && sum < 10 {
            submitButton3.isHidden = false
            
        }
        
        else {
            submitButton4.isHidden = false
        }
        
        }
        
    }
    
    
    
   
   func NextQuestion() {

    if index < questions.count - 1 {
      index = index + 1
        questionLabel.text = questions[index].question
        choiceButton[0].setTitle(questions[index].choice[0], for: .normal)
        choiceButton[1].setTitle(questions[index].choice[1], for: .normal)
        choiceButton[2].setTitle(questions[index].choice[2], for: .normal)
        choiceButton[3].setTitle(questions[index].choice[3], for: .normal)
    }
        else {
            checkGender()
        }
        
    }

    
    func checkGender () {
        choiceButton[0].isHidden = true
        choiceButton[1].isHidden = true
        choiceButton[2].isHidden = true
        choiceButton[3].isHidden = true
        genderSegment.isHidden = false
        questionLabel.text = " choose your gender"
        
    }
    
    @IBOutlet weak var genderSegment: UISegmentedControl!
    
   
   
    @IBOutlet weak var submitButton2: UIButton!
    
    @IBOutlet weak var submitButton3: UIButton!
    
    @IBOutlet weak var submitButton4: UIButton!
    
    @IBAction func submit(_ sender: Any) {
        performSegue(withIdentifier: "personalityshow", sender: sender)
        
        
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[0].question
        choiceButton[0].setTitle(questions[0].choice[0], for: .normal)
        choiceButton[1].setTitle(questions[0].choice[1], for: .normal)
        choiceButton[2].setTitle(questions[0].choice[2], for: .normal)
        choiceButton[3].setTitle(questions[0].choice[3], for: .normal)
       
        self.tableView.backgroundView = UIImageView(image:#imageLiteral(resourceName: "girlbg"))
        self.tableView.backgroundView?.alpha = 0.5

        
        persons.append(Person(iamgeName:"gosworth", information:"""
做人忠於本分，
既嚴肅又可愛，
粗心大意但總會得人歡心，
縱使膽子不大，
但傻人有傻福，
人緣甚佳有成為領袖的才華，
只差了一點勁。
"""))
        
        
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
        
        persons.append(Person(iamgeName:"macdonald", information:"""
你像衣櫥歌手(Madame de Garderobe)，
充滿魅力與玩味，
享受生活與戀愛，
喜歡藝術和美麗的事物，
討厭同時間逗留在同一個空間，
敢愛敢恨，非常戲劇性的一個人，
遇上處理不了的事或是事與願違，
可能會逃避現實。
"""))
        
        persons.append(Person(iamgeName:"potts", information:"""
你跟茶壺夫人(Mrs. Potts)一樣，
是優雅禮貌及公義的化身，
有耐心又慈悲，
實話實說，喜歡照顧人，
並全心全意為別人付出，
享受家庭生活，
有耐性有拼勁，
也有悲觀極端的一面，
不過基本上都給予人正面和溫暖的感覺。
"""))
        
        persons.append(Person(iamgeName:"bell", information:"""
貝兒是一個來自法國鄉村的漂亮姑娘，
她聰明、獨立，也是一個熱愛閱讀的人，
雖然看起來有一些與當時環境中的人格格不入，
但是從來沒有放棄過自己堅持的東西。
她也是勇氣有愛心的人，
最後愛上了野獸，
可見她不怎么注重外表，而在乎內心。
你的擇偶觀也與貝兒有點兒像，
在接觸了對方，發現對方心靈美之後，
也會忽視他的外表。
"""))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
    }
/*
    // MARK: - Table view data source

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


