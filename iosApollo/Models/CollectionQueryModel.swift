//
//  CollectionQueryModel.swift
//  iosApollo
//
//  Created by Erick Arias on 27/07/22.
//

import Foundation
struct CollectionQueryModel: Codable {
    let version: String
    let items: [ItemQueryModel]
}
