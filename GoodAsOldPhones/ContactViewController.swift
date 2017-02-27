//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Sebastian Strus on 2017-02-18.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 1000)
    }


    
    

}
