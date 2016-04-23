//
//  AboutViewController.swift
//  bullseye
//
//  Created by Field Service on 4/7/16.
//  Copyright © 2016 Alejandro Gomez Mutis. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html") {
            if let htmlData = NSData(contentsOfFile: htmlFile)
            {
                let baseURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func close() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
