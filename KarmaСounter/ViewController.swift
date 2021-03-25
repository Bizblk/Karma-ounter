//
//  ViewController.swift
//  KarmaСounter
//
//  Created by Виталий Оранский on 24.03.2021.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet weak var karamaCount: UILabel!
    
    private var count = 0
    private var name = NSManagedObject()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        karamaCount.text = String(count)
        // Do any additional setup after loading the view.
    }


    @IBAction func addKarma(_ sender: Any) {
        count += 1
        karamaCount.text = String(count)
    }
    
    @IBAction func clearYourKarma(_ sender: Any) {
        count = 0
        karamaCount.text = String(count)
    }
    @IBAction func saveName(_ sender: Any) {
        
    }
}

