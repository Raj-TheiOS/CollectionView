//
//  ImageViewController.swift
//  CollectionViewDemo
//
//  Created by Raj on 23/07/18.
//  Copyright © 2018 Raj. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    @IBOutlet weak var iimg: UIImageView!
    
    
    @IBOutlet weak var ilbl: UILabel!
    
    
    var mainimg:UIImage!
    var  mainLbl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iimg.image=mainimg
        ilbl.text=mainLbl

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
