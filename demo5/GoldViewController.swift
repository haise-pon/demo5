//
//  GoldViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/02/21.
//

import UIKit

class GoldViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        @IBOutlet weak var myTableView: UITableView! // テーブルビュー

        // Table Viewに表示する配列を用意
        let mediaList = ["AIMに自信がなかったらこれを見て練習！", "感度設定方法コントローラー編","感度設定方法マウス編"]

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
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier:  "Cell4", for: indexPath)
            
            cell.textLabel!.text = mediaList[indexPath.row]

            return cell
        }
        
         /// タップされたセルの場所を取得
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                // 何番目のセルか？で分岐
                switch indexPath.row {
                case 0 :
                    // ブログのURL
                    let url = URL(string: "https://www.youtube.com/watch?v=zA1ZyVgqlp8")
                    UIApplication.shared.open(url!)
                case 1 :
                    // TwitterのURL
                    let url = URL(string: "https://www.youtube.com/watch?v=E3EUoJ6O3ho")
                    UIApplication.shared.open(url!)
                case 2 :
                    // TwitterのURL
                    let url = URL(string: "https://www.youtube.com/watch?v=5sF0t7Wk8Ls")
                    UIApplication.shared.open(url!)

                default:
                    break
                }
            }            // ここに処理を追加
        }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


