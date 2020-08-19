//
//  DetailViewController.swift
//  DynamicLink Firebase
//
//  Created by Fauzi Fauzi on 19/08/20.
//  Copyright © 2020 defauloper. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var item: Item?
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = item?.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        print("Share \(item?.link ?? "-")")
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
