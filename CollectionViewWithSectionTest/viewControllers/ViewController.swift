//
//  ViewController.swift
//  CollectionViewWithSectionTest
//
//  Created by Ye Pyae Sone Tun on 11/4/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainCollectionView.dataSource = self
        self.mainCollectionView.delegate = self
    
        cellRegister()
    }
    
    func cellRegister(  ){
        CellRegisterUtil.cellRegister(nibName: "AdsCollectionViewCell", collectionView: self.mainCollectionView)
        CellRegisterUtil.cellRegister(nibName: "PopularBooksCollectionViewCell", collectionView: self.mainCollectionView)
        
    }

}

extension UIViewController: UICollectionViewDataSource{
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        
        return 4
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
        let adsCell  = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsCollectionViewCell", for: indexPath) as! AdsCollectionViewCell
            return adsCell
        }
        
       else  {
            let popularBookCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularBooksCollectionViewCell", for: indexPath) as! PopularBooksCollectionViewCell
            return popularBookCollectionViewCell
        }
    }
}

extension UIViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 180)
        }else {
            return CGSize(width: self.view.frame.width, height: 230)
        }
    }
}
