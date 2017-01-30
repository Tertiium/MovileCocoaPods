//
//  ViewController.swift
//  MovileCocoaPods
//
//  Created by user on 27/01/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://codewithchris.com/code/afsample.json", method: .get).responseJSON { (response) in
            
            if response.result.isSuccess{
                if let json = response.result.value{
                    print(json)
                }
                
            }else{
                print(response)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

