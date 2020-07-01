//
//  ViewController.swift
//  youtube-oneday
//
//  Created by Lachlan Haddrell on 28/6/20.
//  Copyright © 2020 haddrelltech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getvideos()
    }


}

