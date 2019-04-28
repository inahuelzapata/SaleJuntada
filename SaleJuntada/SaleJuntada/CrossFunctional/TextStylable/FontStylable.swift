//
//  FontStylable.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation
import UIKit

protocol FontStylable {
    var dict: [NSAttributedString.Key: Any] { get }
}

enum FontStyle: FontStylable {
    case font(FontDescription, CGFloat)
    case foregroundColor(UIColor)
    case shadow(UIColor, CGFloat, CGSize)
    case paragraph(NSParagraphStyle)
    case alignment(NSTextAlignment)
    case lineSpacing(CGFloat)

    var dict: [NSAttributedString.Key: Any] {
        switch self {
        case .font(let font, let size):
            return [NSAttributedString.Key.font: UIFont(name: font.name, size: size) ?? UIFont.systemFont(ofSize: size)]
        case .foregroundColor(let color):
            return [NSAttributedString.Key.foregroundColor: color]
        case .shadow(let color, let radius, let offset):
            let shadow = NSShadow()
            shadow.shadowColor = color
            shadow.shadowOffset = offset
            shadow.shadowBlurRadius = radius

            return [NSAttributedString.Key.shadow: shadow]
        case .paragraph(let paragraph):
            return [NSAttributedString.Key.paragraphStyle: paragraph]
        case .alignment(let alignment):
            let paragraph = NSMutableParagraphStyle()
            paragraph.alignment = alignment

            return [NSAttributedString.Key.paragraphStyle: paragraph]
        case .lineSpacing(let spacing):
            let paragraph = NSMutableParagraphStyle()
            paragraph.lineSpacing = spacing

            return [NSAttributedString.Key.paragraphStyle: paragraph]
        }
    }
}
