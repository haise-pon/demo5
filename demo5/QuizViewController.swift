//
//  QuizViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/04/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    var quizArray = [Any]()
    
    var correctAnswer: Int = 0
    
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    
    override func viewDidLoad() {
        choiceButton1.layer.cornerRadius = 10
        choiceButton2.layer.cornerRadius = 10
        choiceButton3.layer.cornerRadius = 10
        
        
        
        super.viewDidLoad()
        var  tmpArray = [Any]()
        
        tmpArray.append(["apexはいつリリースされた?","2000年4月1日","2019年2月4日","2020年7月23日",2])
        tmpArray.append(["apexはどこが作った？","Respawn","任天堂","SEGA",1])
        tmpArray.append(["一番多くマガジンで持てる銃は何？","スピットファイア","フラトラ","R301",1])
        tmpArray.append(["apexは何人で遊ぶ？","3人","5人","6人",1])

        while (tmpArray.count > 0) {
            let  index = Int(arc4random()) % tmpArray.count
            quizArray.append(tmpArray[index])
            tmpArray.remove(at: index)
        }
        choiceQuiz()
    }
                
    
    func choiceQuiz() {
        
        let tmpArray = quizArray[0] as! [Any]
        
        quizTextView.text = (tmpArray[0] as! String)
        
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
        
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        
        let  tmpArray = quizArray[0] as! [Any]
        
        if tmpArray[4] as! Int == sender.tag {
            
            correctAnswer = correctAnswer + 1
            let alert: UIAlertController = UIAlertController(title: "正解！", message:"おめでとう",preferredStyle:.alert)
             let okaction: UIAlertAction = UIAlertAction(title:"OK", style: .default, handler:{
                           (action: UIAlertAction!) -> Void in
                           
                           self.quizArray.remove(at: 0)
                                               
                           if self.quizArray.count == 0 {
                               self.perfromSegueToResult()
                               
                           }else{
                               self.choiceQuiz()
                               
                           }
                           
                       }
                       )
            alert.addAction(okaction)
            self.present(alert, animated: true, completion: nil)
   
            let _: UIAlertController = UIAlertController(title: "不正解！", message:"残念",preferredStyle:.alert)
            let _: UIAlertAction = UIAlertAction(title:"OK", style: .default, handler:{
                (action: UIAlertAction!) -> Void in
                
                self.quizArray.remove(at: 0)
                                    
                if self.quizArray.count == 0 {
                    self.perfromSegueToResult()
                    
                }else{
                    self.choiceQuiz()
                    
                }
                
            }
            )
            alert.addAction(okaction)
            self.present(alert, animated: true, completion: nil)
    
        }
       
    }
    
    func  perfromSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender:Any?) {
        if segue.identifier == "toResultView" {
        let resultViewController = segue.destination as! ResultViewController
            
            resultViewController.correctAnwer = self.correctAnswer
            
        }
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
