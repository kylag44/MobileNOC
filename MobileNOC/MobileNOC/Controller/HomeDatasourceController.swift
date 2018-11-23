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
    
    setUpNavigationBarItems()
    
    let customGray = UIColor(r: 230, g: 230, b: 230)
    collectionView.backgroundColor = customGray
    
    let homeDatasource = HomeDatasource()
    self.datasource = homeDatasource
    
    
    let login = "admin@boot.com"
    let password = "admin"
    
    let url = NSURL(string: "https://45.55.43.15:9090/api/machine?page=0&size=10")
    let request = NSMutableURLRequest(url: url! as URL)
    
    let config = URLSessionConfiguration.default
    let userPasswordString = "\(login):\(password)"
    let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
    let base64EncodedCredential = userPasswordData?.base64EncodedData()

    let authString = "Basic \(String(describing: base64EncodedCredential))"
    config.httpAdditionalHeaders = ["Authorization" : authString]
    let session = URLSession(configuration: config)
    let task = session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
    }
    task.resume()
//    let jsonUrlString = "https://45.55.43.15:9090/api/machine?page=0&size=10"
//        guard let url = URL(string: jsonUrlString) else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//
//          guard let data = data else { return }
//          let dataAsString = String(data: data, encoding: .utf8)
//          print(dataAsString!)
//          }.resume()
  }
  
//  private func setUpNavigationBarItems() {
//    let titleImageView = UIImageView(image: UIImage(named: "GrayGlobe"))
//    titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
//    titleImageView.contentMode = .scaleAspectFit
//
//    navigationItem.titleView = titleImageView
//  }
  
  override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 75)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    if section == 1 {
      return .zero
    }
    
    return CGSize(width: view.frame.width, height: 10)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    if section == 1 {
      return .zero
    }
    return CGSize(width: view.frame.width, height: 75 )
  }
  
}

