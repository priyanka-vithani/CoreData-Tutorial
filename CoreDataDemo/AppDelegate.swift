//
//  AppDelegate.swift
//  CoreDataDemo
//
//  Created by Apple on 19/06/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appNavigation:UINavigationController?
    
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          
          print("Documents Directory: ", FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last ?? "Not Found!")
          
       
          return true
      }
      
      
      

      func applicationWillResignActive(_ application: UIApplication) {
          
      }

      func applicationDidEnterBackground(_ application: UIApplication) {
         
      }

      func applicationWillEnterForeground(_ application: UIApplication) {
         
      }

      func applicationDidBecomeActive(_ application: UIApplication) {
          var preferredStatusBarStyle: UIStatusBarStyle{
              return UIStatusBarStyle.lightContent
          }
      }

      func applicationWillTerminate(_ application: UIApplication) {
          
      }

    
}

