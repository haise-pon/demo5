//
//  ResultViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/04/23.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var circleButton4: UIButton!
    
    var correctAnwer: Int = 0
    
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        circleButton4.layer.cornerRadius = 10
        super.viewDidLoad()
        
        resultLabel.text = String(correctAnwer)

        // Do any additional setup after loading the view.
    }
    @IBAction func back() {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func share() {// 共有する項目の設定
        let shareText = "あなたは"+String(correctAnwer)+"点を獲得しました。"
        let activityItems = [shareText] as [Any]

        // 共有画面を作っているよ
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)

        // 共有画面を表示しているよ
        self.present(activityVC, animated: true, completion: nil)
    }
    
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
