//
//  BronzeViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/02/21.
//

import UIKit

class BronzeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        @IBOutlet weak var TableView: UITableView! // テーブルビュー

        // Table Viewに表示する配列を用意
        let mediaList = ["この記事を見て基礎を覚えよう！","この動画を見てキャラコンを覚えよう！"]

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
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier:  "Cell2", for: indexPath)
            
            cell.textLabel!.text = mediaList[indexPath.row]

            return cell
        }
        
    
            // ここに処理を追加    /// タップされたセルの場所を取得
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                // 何番目のセルか？で分岐
                switch indexPath.row {
                case 0 :
                    // ブログのURL
                    let url = URL(string: "https://yaruki-game.net/tag/%E4%B8%8A%E9%81%94%E3%81%B8%E3%81%AE%E9%81%93%EF%BC%88apex%EF%BC%89")
                    UIApplication.shared.open(url!)
                    
                case 1 :
                    let url = URL(string: "https://www.youtube.com/watch?v=2kttKKVh8Vk")
                    UIApplication.shared.open(url!)
                    
               
                default:
                    break
                }
            }        }
    

        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


