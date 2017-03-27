//
//  Logger.swift
//  Logger
//
//  Created by Naveen on 15/03/17.
//  Copyright © 2017 TTN. All rights reserved.
//

import Foundation


var isLoggingEnable:Bool = false

open class Logger{
    
    public class func error(_ message: String){
        DLog(message, type: "[ERROR]")
    }
    public class func warning(_ message: String){
        DLog(message, type: "[WARNING]")
    }
    public class func Debug(_ message: String){
        DLog(message, type: "[DEBUG]")
    }
    public class func isEnable(_ enable: Bool){
        isLoggingEnable = enable
    }
    public class func isDisable(_ message: String){
        isLoggingEnable = false
    }
    public class func DLog(_ message: String, function: String = #function,type: String) {
        if isLoggingEnable == true {
            //            #if DEBUG
            print("\(type):\(function): \(message)")
            //            #endif
        }
    }
    
}


















