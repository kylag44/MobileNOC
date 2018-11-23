//
//  HomeDatasource.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
  
  let users: [UserData] = {
    let user1 = UserData(name: "Brazil", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let user2 = UserData(name: "Brazil", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let user3 = UserData(name: "Brazil", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let user4 = UserData(name: "Brazil", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    return [user1, user2, user3, user4]
  }()
  
  let users2: [UserData2] = {
    let users1 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users2 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users3 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users4 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users5 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users6 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users7 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users8 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users9 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    let users10 = UserData2(name: "Argentina", name2: "BRSANBCM01", ipAddress: "10.75.0.1", deviceIPSubnetMask: "255.255.255.0")
    return [users1, users2, users3, users4, users5, users6, users7, users8, users9, users10]
  }()

  
  override func footerClasses() -> [DatasourceCell.Type]? {
    return [UserFooter.self]
  }
  
  override func headerClasses() -> [DatasourceCell.Type]? {
    return [UserHeader.self]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [InfoCell.self, InfoCell2.self]
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    if indexPath.section == 1 {
      return users2[indexPath.item]
    }
    return users[indexPath.item]
  }
  
  override func numberOfSections() -> Int {
    return 2
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    if section == 1 {
      return users2.count
    }
    return users.count
  }
  
}
