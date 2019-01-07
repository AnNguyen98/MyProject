//
//  coppy.swift
//  dataSqlite
//
//  Created by datnguyen on 9/12/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import Foundation
import UIKit

class coppySQLite: NSObject {
    
    class func getPath(fileName: String) -> String {
        
        //let documentsURL = FileManager().default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
           let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
           let fileURL = documentsURL.appendingPathComponent(fileName)
           return fileURL.path
        }
        
        class func copyFile(_ fileName: NSString) {
            let dbPath: String = getPath(fileName: fileName as String)
            print(dbPath)
            let fileManager = FileManager.default
                
            if !fileManager.fileExists(atPath: dbPath){
            let documentsURL = Bundle.main.resourceURL
            let fromPath = documentsURL?.appendingPathComponent(fileName as String)
            
            var error : NSError?
            do {
                try fileManager.copyItem(atPath: (fromPath?.path)!, toPath: dbPath)
                
            } catch let error1 as NSError {
                error = error1
            }
                print("thanh cong!")
            }else{
                print("file da ton tai")
            }
            
        }
}
        

