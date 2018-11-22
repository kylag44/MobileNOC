//
//  Cells.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
  override func setupViews() {
    super.setupViews()
    backgroundColor = .blue
  }
}

class UserHeader: DatasourceCell {
  override func setupViews() {
    super.setupViews()
    backgroundColor = .green
  }
}

class InfoCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      nameLabel.text = datasourceItem as? String
    }
  }
  
  let circleImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .red
   
    return imageView
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.text = "Test Test Test"
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    backgroundColor = .yellow
    
    addSubview(nameLabel)
    addSubview(circleImageView)
    circleImageView.layer.borderWidth = 1
    circleImageView.layer.masksToBounds = false
    circleImageView.layer.borderColor = UIColor.black.cgColor
    circleImageView.layer.cornerRadius = circleImageView.frame.height/2
    circleImageView.clipsToBounds = true
    
    nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    circleImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
  }
  
}
