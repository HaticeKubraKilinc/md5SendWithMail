//
//  ViewController.swift
//  md5SendWithMail
//
//  Created by hatice kübra kılınç on 19.02.2018.
//  Copyright © 2018 hatice kübra kılınç. All rights reserved.
//

import UIKit
import SwiftHash
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UITextField!
    
    @IBAction func encryptBUTTON(_ sender: Any) {
        
        let mesaj = input.text
        let md5Converter = MD5(input.text!)
        output.text = md5Converter
        
    }
    
   
    @IBAction func SendingMailBUTTON(_ sender: Any) {
        
        if (self.output.text != ""){
            let email = ""
            let subject = "/(textField) ,/(output)"
            
            //if let url = NSURL(string: "mailto:\(email)" , "input : \(input) output : \(output)") {
             //mailComposerVC.setMessageBody(  "/(textField) size bu mesajı yolladı /(output)" , isHTML: false)
            /*
             func setMessageBody( "/(textField) ,/(output)"){}
              //UIApplication.shared.open(url as URL,   options: NSLog(" //UIApplication.shared.open(url as URL,   options: NSLog("/(textField) ,/(output)"))"))
             
             */
            
            if let url = NSURL(string: "mailto:\(email)") {
               
                UIApplication.shared.open(url as URL)
                
                func configureMailComposeViewController() -> MFMailComposeViewController
                {
                    
                    
                    let mailComposerVC = MFMailComposeViewController()
                    //mailComposerVC.mailComposerDelegate = self    tek bir harf hatası
                    //let adress = gonderilicekAdres
                    //mailComposerVC.setSubject(adress?)
                    /*  mailComposerVC.mailComposeDelegate = self
                     mailComposerVC.setCcRecipients(["htckbr_@outlook.com"]) */
                    
                   
                    mailComposerVC.setSubject("encrypt message")
                    mailComposerVC.setMessageBody(  "/(input.text)  /(output.text)" , isHTML: false)
                    
                    
                    return mailComposerVC
                    
                }
                
                
            }
         
        }
        
    }
    
}

