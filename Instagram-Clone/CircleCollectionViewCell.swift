//
//  CircleCollectionViewCell.swift
//  Instagram-Clone
//
//  Created by Bahittin on 29.08.2023.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CircleCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 64 / 2
        imageView.layer.borderColor = UIColor.blue.cgColor
        imageView.layer.borderWidth = 2
        imageView.tintColor = UIColor.gray
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    public func configure(with name: String) {
        myImageView.image = UIImage(systemName: name)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        myImageView.image = nil
    }
}
