//
//  PlatinumViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/02/21.
//

import UIKit

class PlatinumViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        @IBOutlet weak var myTableView: UITableView! // テーブルビュー

        // Table Viewに表示する配列を用意
        let mediaList = ["立ち回りを覚えるために上手い人のLiveを見よう！", "渋谷ハル","うるか","alelu","自分と同じくらいの人のランクマッチの解説を見よう！",
        "すでたき"]

        override func viewDidLoad() {
            super.viewDidLoad()
        }

        /// セクションデータ数（メディアの数）を返すメソッド
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            mediaList.count
        }

        /// セルに値（メディア名）を設定するメソッド
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // セルを取得
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier:  "Cell5", for: indexPath)
            
            cell.textLabel!.text = mediaList[indexPath.row]

            return cell
        }
        
       
            // ここに処理を    /// タップされたセルの場所を取得
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                // 何番目のセルか？で分岐
                switch indexPath.row {
               
                case 1 :
                    // TwitterのURL
                    let url = URL(string: "https://www.youtube.com/channel/UChLfthKoUV502J7gU9STArg")
                    UIApplication.shared.open(url!)
                    
                case 2 :
                    // TwitterのURL
                    let url = URL(string: "https://www.youtube.com/channel/UChrTMfNcD1eN2ENGWBD7lUQ")
                    UIApplication.shared.open(url!)
                    
                case 3 :
                    // TwitterのURL
                    let url = URL(string: "https://www.twitch.tv/alelu")
                    UIApplication.shared.open(url!)
                    
                case 5 :
                    let  url = URL(string: "https://www.youtube.com/channel/UCjWLRmyufIkmT-T39b8BBew")
                    UIApplication.shared.open(url!)
                    
                    
                default:
                    break
                }
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


