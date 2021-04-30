//
//  ViewController.swift
//  demo5
//
//  Created by 家族PC on 2021/02/21.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableView: UITableView!
        
    let items: [String] = [
    "ブロンズ",
    "シルバー",
    "ゴールド",
    "プラチナ",
    "ダイアモンド",
    "マスター、プレデター",
    "Apexクイズ"]
    
    // セルの数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // セルを設定し、設定したセルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // セルの選択を解除
        // 遷移前にセルの選択状態を解除しておかないと、Appleの審査に落ちることがあるらしい
        tableView.deselectRow(at: indexPath, animated: true)
        
        // performSegue(withIdentifier: "toTestView", sender: nil)

        // 別の画面に遷移
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "toBronze", sender: nil)
        case 1:
            performSegue(withIdentifier: "toSilver", sender: nil)
        case 2:
            performSegue(withIdentifier: "toGold", sender: nil)
        case 3:
            performSegue(withIdentifier: "toPlatinum", sender: nil)
        case 4:
            performSegue(withIdentifier: "toDiamond", sender: nil)
        case 5:
            performSegue(withIdentifier: "toPredator", sender: nil)
        case 6:
            performSegue(withIdentifier: "toQuiz" ,sender: nil)
        default:
            break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self

        //ViewController.tableView.register(UINib(nibName: "TableViewCell", bundle: nil),forCellReuseIdentifier:"Cell")
           // configureTableView()
        }
        
        //override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //return 2;
        }
        
      //  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          //  let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
           // return cell
      //  }
        
       // func configureTableView() {
            //tableView.rowHeight = 450
       //}
        
      
   // }







