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
    
    // MARK: 変数
    let ref: DocumentReference = Firestore.firestore().collection("counts").document("checkwork")
    
    // MARK: override
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: @IBAction
}

