//
//  User.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation
import Tagged

struct User {
    typealias Email = Tagged<User, String>

    let firstName: String
    let lastName: String

    let email: Email
    let avatar: Avatar
}

extension User: Decodable { }

enum Avatar: String {
    case man
    case woman
    case dog
    case cat
}

extension Avatar: Decodable { }
