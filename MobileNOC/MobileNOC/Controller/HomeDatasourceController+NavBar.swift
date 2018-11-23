//
//  HomeDatasourceController+NavBar.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import UIKit

extension HomeDatasourceController {
  
  func setUpNavigationBarItems() {
    setUpLeftNavItems()
    setUpRightNavItems()
    setUpRemainingNavItems()
  }
  
  private func setUpRemainingNavItems() {

    
//    let allLocationsButton = UIButton(frame: CGRect(x: 100, y: 100, width: 34, height: 34))
//    allLocationsButton.backgroundColor = .white
//    allLocationsButton.layer.borderWidth = 2
//    allLocationsButton.layer.borderColor = UIColor.lightGray.cgColor
//    allLocationsButton.setTitle("   All Locations   ", for: .normal)
//    allLocationsButton.setTitleColor(.lightGray, for: .normal)
//    allLocationsButton.titleLabel!.font = UIFont(name: "AvenirNext-Medium" , size: 15)
//    allLocationsButton.tintColor = .lightGray
//    allLocationsButton.layer.cornerRadius = 20
//    self.view.addSubview(allLocationsButton)
    
//    let downButton = UIButton(frame: CGRect(x: 100, y: 100, width: 34, height: 34))
//    downButton.backgroundColor = .white
//    downButton.layer.borderWidth = 2
//    downButton.layer.borderColor = UIColor.lightGray.cgColor
//    downButton.setTitle("Down", for: .normal)
//    downButton.setTitleColor(.lightGray, for: .normal)
//    downButton.tintColor = .lightGray
//    downButton.layer.cornerRadius = 10
//    self.view.addSubview(downButton)
  
//    navigationItem.titleView = allLocationsButton

    
    navigationController?.navigationBar.backgroundColor = .white
    navigationController?.navigationBar.isTranslucent = false
  }
  
  private func setUpLeftNavItems() {
    let searchBar = UISearchBar()
    searchBar.backgroundColor = customGray
    searchBar.frame = CGRect(x: 0, y: 0, width: 150, height: 34)
    searchBar.barTintColor = customGray
    searchBar.tintColor = customGray
    searchBar.layer.borderWidth = 0.1
    searchBar.layer.cornerRadius = 20
    
    navigationItem.leftBarButtonItem = UIBarButtonItem(customView: searchBar)
  }
  
  private func setUpRightNavItems() {
    let globeButtun = UIButton(type: .system)
    globeButtun.setImage(UIImage(named: "GrayGlobe")?.withRenderingMode(.alwaysOriginal), for: .normal)
    globeButtun.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
    globeButtun.contentMode = .scaleAspectFit
    
    let menuButton = UIButton(type: .system)
    menuButton.setImage(UIImage(named: "GrayMenu")?.withRenderingMode(.alwaysOriginal), for: .normal)
    menuButton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
    menuButton.contentMode = .scaleAspectFit
    
    let splatButton = UIButton(type: .system)
    splatButton.setImage(UIImage(named: "GraySplat")?.withRenderingMode(.alwaysOriginal), for: .normal)
    splatButton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
    splatButton.contentMode = .scaleAspectFit
    
    let allLocationsButton = UIButton(frame: CGRect(x: 100, y: 100, width: 34, height: 24))
    allLocationsButton.backgroundColor = .white
    allLocationsButton.layer.borderWidth = 2
    allLocationsButton.layer.borderColor = UIColor.lightGray.cgColor
    allLocationsButton.setTitle("   All Locations   ", for: .normal)
    allLocationsButton.setTitleColor(.lightGray, for: .normal)
    allLocationsButton.titleLabel!.font = UIFont(name: "AvenirNext-Medium" , size: 15)
    allLocationsButton.tintColor = .lightGray
    allLocationsButton.layer.cornerRadius = 15
    
    let downButton = UIButton(frame: CGRect(x: 100, y: 100, width: 24, height: 24))
    downButton.backgroundColor = .white
    downButton.layer.borderWidth = 2
    downButton.layer.borderColor = UIColor.lightGray.cgColor
    downButton.setTitle("   Down   ", for: .normal)
    downButton.setTitleColor(.lightGray, for: .normal)
    downButton.titleLabel!.font = UIFont(name: "AvenirNext-Medium" , size: 15)
    downButton.tintColor = .lightGray
    downButton.layer.cornerRadius = 15
    
    let activeButton = UIButton(frame: CGRect(x: 100, y: 100, width: 24, height: 24))
    activeButton.backgroundColor = .white
    activeButton.layer.borderWidth = 2
    activeButton.layer.borderColor = UIColor.lightGray.cgColor
    activeButton.setTitle("   Active   ", for: .normal)
    activeButton.setTitleColor(.lightGray, for: .normal)
    activeButton.titleLabel!.font = UIFont(name: "AvenirNext-Medium" , size: 15)
    activeButton.tintColor = .lightGray
    activeButton.layer.cornerRadius = 15
    
    let allButton = UIButton(frame: CGRect(x: 100, y: 100, width: 18, height: 24))
    allButton.backgroundColor = .white
    allButton.layer.borderWidth = 2
    allButton.layer.borderColor = UIColor.lightGray.cgColor
    allButton.setTitle("   All   ", for: .normal)
    allButton.setTitleColor(.lightGray, for: .normal)
    allButton.titleLabel!.font = UIFont(name: "AvenirNext-Medium" , size: 15)
    allButton.tintColor = .lightGray
    allButton.layer.cornerRadius = 15
    
    let filterByButton = UIButton(frame: CGRect(x: 100, y: 100, width: 70, height: 24))
    filterByButton.backgroundColor = .white
    filterByButton.layer.borderWidth = 2
    filterByButton.layer.borderColor = UIColor.white.cgColor
    filterByButton.setTitle("Filter by   ", for: .normal)
    filterByButton.setTitleColor(.lightGray, for: .normal)
    filterByButton.titleLabel!.font = UIFont(name: "AvenirNext-Bold" , size: 15)
    filterByButton.tintColor = .lightGray
    filterByButton.layer.cornerRadius = 15
    
    navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: splatButton), UIBarButtonItem(customView: menuButton), UIBarButtonItem(customView: globeButtun), UIBarButtonItem(customView: allLocationsButton), UIBarButtonItem(customView: downButton), UIBarButtonItem(customView: activeButton), UIBarButtonItem(customView: allButton), UIBarButtonItem(customView: filterByButton)]
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 10
  }
  
}
