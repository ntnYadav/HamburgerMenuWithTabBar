//
//  FristViewController.swift
//  HAMBURGERMENUWITHTABBAR
//
//  Created by admin on 10/12/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
import UIKit

class FristViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    @IBAction func hamburgerBtnAction(_ sender: UIBarButtonItem) {
        HamburgerMenu().triggerSideMenu()

    }
    
    @objc func hideHamburger(){
        HamburgerMenu().closeSideMenu()
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
