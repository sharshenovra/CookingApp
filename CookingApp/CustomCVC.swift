//
//  CustomCVC.swift
//  CookingApp
//
//  Created by Ruslan Sharshenov on 08.01.2022.
//

import UIKit
import SnapKit
import Kingfisher

class CustomCVC: UICollectionViewCell {
    
    static let identifier = "CustomCVC"
    
    private lazy var titleText: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 2
        return view
    }()
    
    lazy var myImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .orange
        contentView.addSubview(titleText)
        contentView.addSubview(myImageView)
        contentView.clipsToBounds = true
        
    }
    
    override func layoutSubviews() {
        titleText.snp.makeConstraints { make in
            make.top.centerX.height.equalToSuperview()
            make.height.equalToSuperview().dividedBy(4)
        }
        
        myImageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalTo(titleText.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.7)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(label: String, image: URL) {
        titleText.text = label
        myImageView.kf.setImage(with: image)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        titleText.text = nil
        
    }
    
}
