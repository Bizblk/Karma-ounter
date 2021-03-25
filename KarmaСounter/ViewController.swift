//
//  ViewController.swift
//  KarmaСounter
//
//  Created by Виталий Оранский on 24.03.2021.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var karamaCount: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var enterNameLabel: UITextField!
    @IBOutlet weak var saveNameButton: UIButton!
    @IBOutlet weak var yourKarmaLabel: UILabel!
    @IBOutlet weak var addKarmaButton: UIButton!
    
    private var count = 0
    private var toggle = false
    var dataStoreManager = DataStoreManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if userNameLabel.text == "Enter you name" {
//            yourKarmaLabel.isHidden = true
//            addKarmaButton.isHidden = true
//            karamaCount.isHidden = true
//
//        } else {
//            enterNameLabel.isHidden = true
//            saveNameButton.isHidden = true
//        }
        
        karamaCount.text = String(count)
        enterNameLabel.delegate = self
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
    @IBAction func saveName(_ sender: Any){
        let name = enterNameLabel.text ?? "NO NAME"
        let user = dataStoreManager.obtainMainUser(name: name)
        userNameLabel.text = user.name
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        <#code#>
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

