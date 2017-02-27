//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Sebastian Strus on 2017-02-18.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var products: [Product]?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product();
        let product2 = Product();
        let product3 = Product();
        let product4 = Product();
        
        product1.name = "jeden"
        product1.productImage = "productImage1"
        product1.cellImage = "cellImage1"
        product1.numberOfSeats = 5
        
        product2.name = "dwa"
        product2.productImage = "productImage2"
        product2.cellImage = "cellImage2"
        product2.numberOfSeats = 6
        
        product3.name = "trzy"
        product3.productImage = "productImage3"
        product3.cellImage = "cellImage3"
        product3.numberOfSeats = 7
        
        product4.name = "cztery"
        product4.productImage = "productImage4"
        product4.cellImage = "cellImage4"
        product4.numberOfSeats = 8
        
        
        products = [product1, product2, product3, product4]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    
    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }*/
 
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let p = products {
            return p.count
        }
        return 0
    }

    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let product = products?[indexPath.row]
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
            
        }
        
        
        
        //cell.imageView?.image = UIImage(named: "imageCell")
        
        return cell
    }

    
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            //productVC?.productName = "Hej Sebastian!"
            
         
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            productVC?.product = products?[indexPath.row]
            
            
            
            /*if let cell = sender as? UITableViewCell {
                if let indexPath = tableView.indexPath(for: cell) {
                    productVC?.productName = productNames?[indexPath.row]
                }
            }*/
            
            
            
            /*let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPath(for: c)
                if let ip = indexPath {
                    let productName = productNames?[ip.row]
                    productVC?.productName = productName
                }
            }*/
        }
    }
    
    
    

}
