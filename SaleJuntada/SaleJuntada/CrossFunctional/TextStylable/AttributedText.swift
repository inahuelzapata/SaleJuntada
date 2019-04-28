//
//  AttributedText.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation
import UIKit

protocol AttributedText {
    var attributes: NSAttributedString { get }
}

enum FontBuilder: AttributedText {
    case title(String, [FontStylable])

    var attributes: NSAttributedString {
        switch self {
        case .title(let title, let styles):
            return NSAttributedString(string: title, attributes: styles.reduce([NSAttributedString.Key: Any]()) {
                var reduceDict = $0
                let nextDict = $1.dict
                for (attributedKey, attributedValue) in nextDict {
                    reduceDict.updateValue(attributedValue, forKey: attributedKey)
                }
                return reduceDict
            })
        }
    }
}
