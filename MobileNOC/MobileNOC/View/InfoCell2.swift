//
//  InfoCell2.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class InfoCell2: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let userData2 = datasourceItem as? UserData2 else { return }
      nameLabel.text = userData2.name
      nameLabel2.text = userData2.name2
      ipAddressLabel.text = userData2.ipAddress
      deviceIPSubnetMaskLabel.text = userData2.deviceIPSubnetMask
    }
  }
  
  let circleImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    imageView.backgroundColor = .red
    imageView.image = UIImage(named: "Avatar")
    imageView.layer.cornerRadius = imageView.frame.height / 2
    imageView.layer.masksToBounds = true
    imageView.mask?.contentMode = .scaleAspectFit
    return imageView
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.text = "Name 1"
    label.font = UIFont(name: "AvenirNext-Medium", size: 20)
    label.textColor = .gray
    label.backgroundColor = .white
    return label
  }()
  
  let nameLabel2: UILabel = {
    let label = UILabel()
    label.text = "Name 2"
    label.font = UIFont(name: "AvenirNext-Medium", size: 14)
    label.textColor = customBlue
    label.backgroundColor = .white
    return label
  }()
  
  let ipAddressLabel: UILabel = {
    let label = UILabel()
    label.text = "ipAddress"
    label.font = UIFont(name: "AvenirNext-Medium", size: 20)
    label.textColor = .gray
    label.backgroundColor = .white
    return label
  }()
  
  let deviceIPSubnetMaskLabel: UILabel = {
    let label = UILabel()
    label.text = "deviceIPSubnetMask"
    label.font = UIFont(name: "AvenirNext-Medium", size: 14)
    label.textColor = customBlue
    label.backgroundColor = .white
    return label
  }()
  
  let button1: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customGray
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
  }()
  
  let button2: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customGray
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
  }()
  
  let button3: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customGray
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
  }()
  
  let button4: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customGray
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
  }()
  
  let button5: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customGray
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
  }()
  
  let button6: UIButton = {
    let button = UIButton()
    button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    button.backgroundColor = customBlue2
    button.layer.cornerRadius = button.frame.height / 2
    button.clipsToBounds = true
    return button
    }()
  
  override func setupViews() {
    super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
    backgroundColor = .white
    
    addSubview(circleImageView)
    addSubview(nameLabel)
    addSubview(nameLabel2)
    addSubview(ipAddressLabel)
    addSubview(deviceIPSubnetMaskLabel)
    addSubview(button1)
    addSubview(button2)
    addSubview(button3)
    addSubview(button4)
    addSubview(button5)
    addSubview(button6)
    
    
    
    circleImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    
    nameLabel.anchor(circleImageView.topAnchor, left: circleImageView.rightAnchor, bottom: nil , right: nameLabel2.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 50)
    
    nameLabel2.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: ipAddressLabel.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 50)
    
    ipAddressLabel.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button1.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 30)
    
    deviceIPSubnetMaskLabel.anchor(ipAddressLabel.bottomAnchor, left: ipAddressLabel.leftAnchor, bottom: nil, right: ipAddressLabel.rightAnchor, topConstant: 5, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 15)
    
    button1.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button2.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 40)
    
    button2.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button3.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 40)
    
    button3.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button4.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 40)
    
    button4.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button5.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 50, widthConstant: 40, heightConstant: 40)
    
    button5.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: button6.leftAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 40)
    
    button6.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 40)
  }
}
