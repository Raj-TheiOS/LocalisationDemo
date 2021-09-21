//
//  ThirdViewController.swift
//  ThirdViewController
//
//  Created by Raj Rathod on 03/09/21.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var arabicBtn: UIButton!
    @IBOutlet weak var germanBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        englishBtn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "language", comment: ""), for: .normal)
        arabicBtn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "language", comment: ""), for: .normal)
        germanBtn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "language", comment: ""), for: .normal)

    }
}
