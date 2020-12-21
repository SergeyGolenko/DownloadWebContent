//
//  ViewController.swift
//  DownloadWebContent
//
//  Created by Сергей Голенко on 21.12.2020.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var webMy: UIWebView!
    
    let url = URL(string: "https://www.youtube.com/")!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url:url)
        //just show webcontent
        webMy.loadRequest(request)
       
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data,response,error in
            if error != nil {
                print(error)
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)

print(dataString)
                    
                }
            }
        }
        task.resume()
    }


}

