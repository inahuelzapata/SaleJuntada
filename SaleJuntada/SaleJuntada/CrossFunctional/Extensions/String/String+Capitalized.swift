//
//  String+Capitalized.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
