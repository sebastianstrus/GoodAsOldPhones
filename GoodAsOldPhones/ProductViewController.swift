//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Sebastian Strus on 2017-02-18.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var numberOfSeats: UILabel!
    
    
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            productNameLabel.text = p.name
            
            if let a = p.numberOfSeats {
                numberOfSeats.text = String(a)
            }
            
            //String(describing: a)
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
        
        //productNameLabel.text = "1937 Desk Phone"

        //productImageView.image = #imageLiteral(resourceName: "internet")
        // Do any additional setup after loading the view.
    }


    
    
    
    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("Button pressed")
    }
    
}
