//
//  ErrorLogger.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation

protocol ErrorLogger {
    func log<T: Error>(error: T, type: LogType)
}

enum LogType {
    case `default`
    case info
    case debug
    case error
    case fault
}
