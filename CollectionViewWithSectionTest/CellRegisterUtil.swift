//
//  CellRegisterUtil.swift
//  CollectionViewWithSectionTest
//
//  Created by Ye Pyae Sone Tun on 11/4/18.
//  Copyright © 2018 PrimeYZ. All rights reserved.
//

import Foundation
import UIKit
class CellRegisterUtil {
    static func cellRegister(nibName: String, collectionView: UICollectionView){
        let nib = UINib(nibName: nibName, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: nibName)
    }
}
