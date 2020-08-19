//
//  ViewController.swift
//  DynamicLink Firebase
//
//  Created by Fauzi Fauzi on 19/08/20.
//  Copyright © 2020 defauloper. All rights reserved.
//

import UIKit

struct Item {
    var id: String
    var name: String
    var link: String
}

class ViewController: UIViewController {
    
    var items = [Item]()

    @IBOutlet weak var tableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        items.append(Item(id: "001", name: "iPhone 11 Pro", link: "https://001"))
        items.append(Item(id: "002", name: "MacbookPro 13' 2020", link: "https://https://002"))
        items.append(Item(id: "003", name: "Apple Watch Series 5", link: "https://003"))
        items.append(Item(id: "004", name: "iPsd Pro", link: "https://004"))
        items.append(Item(id: "003", name: "AirPods Pro", link: "https://005"))
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")
        cell?.textLabel?.text = items[indexPath.row].name
        
        return cell ?? UITableViewCell.init()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(items[indexPath.row].name)
        
        performSegue(withIdentifier: "DetailSegue", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            if let nextViewController = segue.destination as? DetailViewController {
                nextViewController.item = items[sender as! Int]
            }
        }
    }
    
    
}
