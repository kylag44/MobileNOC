//
//  Service.swift
//  MobileNOC
//
//  Created by Kyla  on 2018-11-21.
//  Copyright © 2018 Kyla . All rights reserved.
//

//import Foundation
//import TRON
//import SwiftyJSON
//
//struct Service {
//
//  let tron = TRON(baseURL: "https://45.55.43.15:9090/api/machine?/page=0&size=10")
//
//  static let sharedInstance = Service()
//
//  func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()) {
//    //start JSON fetch
//    let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("page=0&size=10")
//    request.perform(withSuccess: { (homeDatasource) in
//      completion(homeDatasource, nil)
//    }) { (err) in
//      completion(nil, err)
//    }
//  }
//
//  class JSONError: JSONDecodable {
//    required init(json: JSON) throws {
//      print("JSON ERROR")
//    }
//  }
//
//}
