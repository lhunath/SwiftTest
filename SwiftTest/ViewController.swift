//
//  ViewController.swift
//  SwiftTest
//
//  Created by Maarten Billemont on 2018-04-08.
//  Copyright © 2018 Lyndir. All rights reserved.
//

import UIKit
import AlignedCollectionViewFlowLayout

class ViewController: UIViewController {
    var collectionView: UICollectionView!

    override func loadView() {
        super.loadView()

        self.collectionView = UICollectionView(
                frame: self.view.frame, collectionViewLayout: AlignedCollectionViewFlowLayout() )
        self.view.addSubview( self.collectionView )
    }
}
