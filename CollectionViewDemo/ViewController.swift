//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource

{
    var arrayLbl=["watch_one","watch_two","watch_three","watch_four","watch_five","watch_six","watch_six","watch_seven","watch_eight","watch_nine","watch_ten"]
    
    var arrayimg=[#imageLiteral(resourceName: "watch_three"),#imageLiteral(resourceName: "watch_ten"),#imageLiteral(resourceName: "watch_nine"),#imageLiteral(resourceName: "watch_two"),#imageLiteral(resourceName: "watch_five"),#imageLiteral(resourceName: "watch_one"),#imageLiteral(resourceName: "watch_eight"),#imageLiteral(resourceName: "watch_seven"),#imageLiteral(resourceName: "watch_four"),#imageLiteral(resourceName: "watch_six")]

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayimg.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell:CollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.img.image=arrayimg[indexPath.row]
        cell.lbl.text=arrayLbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail:ImageViewController=self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        
       imageDetail.mainLbl=arrayLbl[indexPath.row]
        imageDetail.mainimg=arrayimg[indexPath.row]
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
}

