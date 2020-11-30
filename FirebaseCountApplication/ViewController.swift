//
//  ViewController.swift
//  FirebaseCountApplication
//
//  Created by Fumiya Tanaka on 2020/11/30.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    // MARK: IBOutlet
    @IBOutlet weak var label: UILabel!
    
    // MARK: 変数
    var number: Int = 0
    let ref: DocumentReference = Firestore.firestore().collection("counts").document("checkwork")
    
    // MARK: override
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: @IBAction
    @IBAction func plus() {
        number += 1
        updateLabel()
    }
    
    @IBAction func minus() {
        number -= 1
        updateLabel()
    }
    
    @IBAction func multiply() {
        number *= 2
        updateLabel()
    }
    
    @IBAction func divide() {
        number /= 2
        updateLabel()
    }
    
    @IBAction func clear() {
        number = 0
        updateLabel()
    }
    
    // MARK: ラベルに数字を表示するメソッド
    func updateLabel() {
        label.text = String(number)
    }
}

