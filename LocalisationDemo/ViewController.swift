//
//  ViewController.swift
//  LocalisationDemo
//
//  Created by Raj Rathod on 03/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var btnChangeLangauge: UIButton!
    @IBOutlet weak var lblCurrentLanguage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblHeader.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "header_text", comment: "")
        lblCurrentLanguage.text = LocalizationSystem.sharedInstance.getLanguage()
      //  btnChangeLangauge.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "change_language", comment: ""), for: .normal)
        print("Hello")
    }

    @IBAction func didtapSec(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecViewController") as! SecViewController
     //   vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func didtapThird(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Sec", bundle: nil)
        let rateVideoCallVC = storyBoard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
       // rateVideoCallVC.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
        self.present(rateVideoCallVC, animated: true)
    }
    @IBAction func didtapEnglish(_ sender: Any) {
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
        self.reloadScreen()
    }
    @IBAction func didtapArabic(_ sender: Any) {
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
        self.reloadScreen()
    }
    @IBAction func didtapGerman(_ sender: Any) {
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "de")
        self.reloadScreen()
    }
    
    func reloadScreen() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
        let appDlg = UIApplication.shared.delegate as? AppDelegate
        appDlg?.window?.rootViewController = vc
    }
    
    @IBAction func changeLanguage(_ sender: Any) {
        if LocalizationSystem.sharedInstance.getLanguage() == "ar" {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
         //   UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "de")
          //  UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

