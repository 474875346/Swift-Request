//
//  ViewController.swift
//  Swift-Request
//
//  Created by 新龙科技 on 2016/12/9.
//  Copyright © 2016年 新龙科技. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        let parameters = ["username":"520it","pwd":"520it","type":"JSON"]
        //
        //        HttpRequestTool.HttpTool.sharedInstance.HttpRequestJSONDataWithUrl(url: "http://120.25.226.186:32812/login", type: .requestTypeGet, parameters:parameters as AnyObject, successed: {
        //            success in
        //            print(success?["success"] as! String )
        //        }, failed: {
        //            error  in
        //            print(error!)
        //        })
        let image = UIImage.init(named: "566a60db03ffa.jpg")!
        let url = "https://172.16.1.5:8443/api/voucher/uploadForIOS"
        
        
        //        Alamofire.upload(imageData, to: "http://101.201.53.181:8088/user/avatar", method: .post, headers: ["Authorization":"e654da84-cf65-4111-a81e-95049155309f"]).responseJSON { response in
        //            if response.result.isSuccess {
        //               print(response.result.value as Any)
        //            }else {
        //                print(response.result.error as Any)
        //            }
        //        }
        let param = ["app_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJtZW1iZXJfaWQiOjUxLCJleHQiOjE0ODE1MDk1ODQ3NTQsImlhdCI6MTQ4MTUwNTk4NDc1NCwiY2xpZW50X2lkIjoiQ0ZDNTAwNjUtNjg4Ni00Q0Q4LTgwQjgtNDQzNTNFRjM1RDA5In0.2lMm1posezVnVQvQHh22qxFyER4BkrX_cIJ1pb5wlug","client":"CFC50065-6886-4CD8-80B8-44353EF35D09","voucherTag":"哈哈"]
        HttpRequestTool.sharedInstance.HttpRequestUpload(url: url, parameters: param, image: image, successed: {
            success in
            print(success as Any)
        }, failed: {
            failed in
            print(failed as Any)
        })
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

