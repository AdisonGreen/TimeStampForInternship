//
//  TestFile.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/27/22.
//

import Foundation
import MessageUI

class EmailHelper: NSObject, MFMailComposeViewControllerDelegate {
    public static let shared = EmailHelper()
    private override init() {
        
    }
    
    func sendEmail(subject:String, body:String, to:String){
        if !MFMailComposeViewController.canSendMail() {
            print("No mail account found")
            // Todo: Add a way to show banner to user about no mail app found or configured
            // Utilities.showErrorBanner(title: "No mail account found", subtitle: "Please setup a mail account")
            return
        }
        
        let picker = MFMailComposeViewController()
        
        picker.setSubject(subject)
        picker.setMessageBody(body, isHTML: true)
        picker.setToRecipients([to])
        picker.mailComposeDelegate = self
        
        let someArrayInString = (buttonPressData.compactMap({ (items) -> String in
            return "\(items)\n"
        }) as Array).joined(separator: "")
        
        let fileName = getDocumentsDirectory().appendingPathComponent("output.txt")
        
        do {
           try someArrayInString.write(to: fileName, atomically: true, encoding: String.Encoding.utf8)
            try picker.addAttachmentData(Data(contentsOf: fileName), mimeType: "text/txt", fileName: "fruitFilesData.txt")
        } catch {
            
        }
        
        EmailHelper.getRootViewController()?.present(picker, animated: true, completion: nil)
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        EmailHelper.getRootViewController()?.dismiss(animated: true, completion: nil)
    }
    
    static func getRootViewController() -> UIViewController? {
//        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window?.rootViewController
        
        // OR If you use SwiftUI 2.0 based WindowGroup try this one
         UIApplication.shared.windows.first?.rootViewController
    }
}
