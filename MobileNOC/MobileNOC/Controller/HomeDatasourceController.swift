//
//  HomeDatasourceController.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = .lightGray
    
    let homeDatasource = HomeDatasource()
    self.datasource = homeDatasource
    
    let jsonUrlString = "https://45.55.43.15:9090/api/machine?page=0&size=10"
        guard let url = URL(string: jsonUrlString) else { return }
    
        URLSession.shared.dataTask(with: url) { (data, response, err) in
    
          guard let data = data else { return }
          let dataAsString = String(data: data, encoding: .utf8)
          print(dataAsString!)
          }.resume()
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 100)
  }
  

  
}

//import UIKit
//
//struct Course {
//  let id: Int
//  let name: String
//  let link: String
//  let imageURL: String
//}
//
//struct Noc {
//  let name: String
//}
////Name : is the server name in the picture
////
////ipAddress : is the big black number
////
////deviceIPSubnetMask : the blue small number below the ipAddress
////
////Status : if 1 green if 2 orange if 3 yellow if 4 red
//class ViewController: UIViewController {
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//
//    let jsonUrlString = "https://45.55.43.15:9090/api/machine?page=0&size=10"
//    //    let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
//    guard let url = URL(string: jsonUrlString) else { return }
//
//    URLSession.shared.dataTask(with: url) { (data, response, err) in
//
//      guard let data = data else { return }
//      let dataAsString = String(data: data, encoding: .utf8)
//      print(dataAsString!)
//      }.resume()
//  }
//}

