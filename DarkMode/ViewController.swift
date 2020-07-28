//
//  ViewController.swift
//  DarkMode
//
//  Created by Apple on 26.07.2020.
//  Copyright © 2020 erdogan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnChange: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //overrideUserInterfaceStyle = .light //telefon modu ne olursa olsun uygulama light modda açılır sadece view controller a etki eder tüm uygulamaya etki etmesi için info.plist dosyasında ekleme yapılmalı. User Interface Style => Dark or Light
    }

    override func viewWillAppear(_ animated: Bool) {
        let userIntercafeStyle = traitCollection.userInterfaceStyle
        if userIntercafeStyle == .dark {
            btnChange.tintColor = UIColor.white
        } else {
            btnChange.tintColor = UIColor.blue
        }
    }
    
    //uygulama açıkken mod değiştiğinde otomatik adapte olur
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userIntercafeStyle = traitCollection.userInterfaceStyle
        if userIntercafeStyle == .dark {
            btnChange.tintColor = UIColor.white
        } else {
            btnChange.tintColor = UIColor.blue
        }
    }

}

