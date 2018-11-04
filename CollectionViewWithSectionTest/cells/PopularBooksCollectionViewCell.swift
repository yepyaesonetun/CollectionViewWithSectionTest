//
//  PopularBooksCollectionViewCell.swift
//  CollectionViewWithSectionTest
//
//  Created by Ye Pyae Sone Tun on 11/4/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import UIKit

class PopularBooksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var popularBooksCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.popularBooksCollectionView.dataSource = self
        self.popularBooksCollectionView.delegate = self
        
        CellRegisterUtil.cellRegister(nibName: "BookCollectionViewCell", collectionView: popularBooksCollectionView)
    }
}

extension PopularBooksCollectionViewCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath)
        return cell
    }
}

extension PopularBooksCollectionViewCell : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 120, height: 120 * 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
