//
//  FeedController.swift
//  Instagram-Clone
//
//  Created by Bahittin on 29.08.2023.
//

import UIKit

class FeedController: UIViewController {

    private var collectionView: UICollectionView?
    
    let imageArray = ["folder.circle","folder.circle","folder.circle","folder.circle","folder.circle","folder.circle","folder.circle","folder.circle",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 64, height: 64)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView?.register(CircleCollectionViewCell.self, forCellWithReuseIdentifier: CircleCollectionViewCell.identifier)
        
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .white
        guard let myCollection = collectionView else { return }
        view.addSubview(myCollection)
       
        view.backgroundColor = .white
        title = "Feed"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 80).integral
    }
}

extension FeedController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as! CircleCollectionViewCell
        cell.configure(with: "")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
}
