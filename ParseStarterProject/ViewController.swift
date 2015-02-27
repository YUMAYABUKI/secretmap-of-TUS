//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
  
    @IBOutlet var UserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func UserNameButton(){
        var hoge = PFObject(className:"hoge")
        hoge["username"] = UserName.text
        hoge.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                println("Save to username")
            } else {
                // There was a problem, check error.description
            }
        }
        
        let objectId01 = hoge.objectId
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.objectId01 = hoge.objectId //appDelegateの変数を操作
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
