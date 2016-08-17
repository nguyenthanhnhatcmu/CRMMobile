//
//  RestService.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 6/5/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class RestService {
    static let shareInstance : RestService = RestService()
    private init(){}
    func callService(methodHTTP: String, urlString: String, bodyRequest:NSDictionary?, completionHandler: (NSDictionary?, NSError?) -> ()) {
        
        let urlRequest: NSMutableURLRequest = RestService.shareInstance.createURLRequest(methodHTTP, urlString: urlString, bodyRequest: bodyRequest)
        
        Alamofire.request(urlRequest)
            .validate()
            .response
            {
                (request, response, data, error) in
                //case 1 : Error With Can't call webservice
                if let err = error {
                    print("error \(error)")
                    completionHandler(nil,self.handleError(response, error: err))
                    return
                }
                else { // case 2.1 : Success
                    self.saveAuthencationInfo(res)
                    if let dicResponse = data?.toDictionary() {
                        completionHandler(dicResponse, nil)
                    }
                    else {
                        let dicSuccess = [Key.success : 0]
                        completionHandler(dicSuccess,nil)
                    }
                }
            }
    }
}