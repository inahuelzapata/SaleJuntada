//
//  Meetup.swift
//  SaleJuntada
//
//  Created by Nahuel Zapata on 4/28/19.
//  Copyright © 2019 iNahuelZapata. All rights reserved.
//

import Foundation
import MapKit

struct Meetup {
    let name: String
    let time: Date
    let assistants: [Assistant]
}

struct Assistant { }

extension Assistant: Decodable { }

extension Meetup: Decodable { }
