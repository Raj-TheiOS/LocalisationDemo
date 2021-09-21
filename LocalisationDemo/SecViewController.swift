//
//  SecViewController.swift
//  SecViewController
//
//  Created by Raj Rathod on 03/09/21.
//

import UIKit

class SecViewController: UIViewController {

    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tf.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "header_text", comment: "")
        lbl.text = LocalizationSystem.sharedInstance.getLanguage()
        btn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "change_language", comment: ""), for: .normal)
    }
}
