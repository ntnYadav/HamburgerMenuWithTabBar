//
//  TabBarViewController.swift
//  HamburgerMenu
//
//  Created by Jeetendra on 04/12/20.
//  Copyright © 2020 Big Rattle Technologies Private Limited. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    var controllerName : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
          self.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
            
        controllerName = item.title ?? ""
                
        }

        // UITabBarControllerDelegate
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
            
                let tab = tabBarController.selectedIndex
                print("*************\(tab)*********")
              if tab == 0 {
                HamburgerMenu().triggerSideMenu()
              }

            
            print("Selected view controller")
        }
        
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            
        
           if controllerName == "First" {
              let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.tabBar = tabBarController
                tabBar.inActiveTintColor()
                HamburgerMenu().triggerSideMenu()
               return false
           }
                

       
            return true
        }

    }

extension UITabBar{
     func inActiveTintColor() {
        if let items = items{
            for item in items{
                if item.title == "First"{
                item.image =  item.image?.withRenderingMode(.alwaysOriginal)
                item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
                }
             
            }
        }
    }
    func inActiveTintColor2() {
        if let items = items{
            for item in items{
                if item.title == "First"{
                item.image =  item.image?.withRenderingMode(.automatic)
                item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.gray], for: .normal)
                }else{
                    item.image =  item.image?.withRenderingMode(.automatic)
                    item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.gray], for: .normal)
                }
            }
        }
    }
}
