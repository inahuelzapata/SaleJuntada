//
//  ErrorHandler.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation

protocol ErrorHandler {
    func handle<T: Error>(error: T)
}
