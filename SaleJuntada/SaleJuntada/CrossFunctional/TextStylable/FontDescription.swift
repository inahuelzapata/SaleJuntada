//
//  FontDescription.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation

protocol FontDescription {
    var name: String { get }
}

enum ArialFontDescription: String, FontDescription {
    case bold
    case italic
    case regular

    var name: String {
        switch self {
        case .regular:
            return "ArialMT"
        default:
            return "Arial-\(self.rawValue.capitalizingFirstLetter())MT"
        }
    }
}

enum MontserratFontDescription: String, FontDescription {

    case bold
    case medium
    case semiBold
    case regular
    case black
    case extraBold

    var name: String {
        return "Montserrat-\(self.rawValue.capitalizingFirstLetter())"
    }
}

enum HelveticaNeueFontDescription: String, FontDescription {
    case bold
    case regular

    var name: String {
        return "HelveticaNeue-\(self.rawValue.capitalizingFirstLetter())"
    }
}
