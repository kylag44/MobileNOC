//
//  Cells.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

let customBlue = UIColor(r: 61, g: 200, b: 244)
let customBlue2 = UIColor(r: 61, g: 225, b: 244)
let customGray = UIColor(r: 200, g: 200, b: 200)

class UserFooter: DatasourceCell {
  
  let footerLabel: UILabel = {
    let label = UILabel()
    label.text = "All Servers"
    label.font = UIFont(name: "AvenirNext-Medium", size: 20)
    label.textColor = .gray
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    
    addSubview(footerLabel)
    footerLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 370, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    backgroundColor = .clear
  }
  
}

class UserHeader: DatasourceCell {
  override func setupViews() {
    super.setupViews()
    separatorLineView.isHidden = false
    let customGray2 = UIColor(r: 200, g: 200, b: 200)
    separatorLineView.backgroundColor = customGray2
    let customGray = UIColor(r: 230, g: 230, b: 230)
    backgroundColor = customGray
  }
  
}

