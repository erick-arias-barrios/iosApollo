//
//  ItemQueryModel.swift
//  iosApollo
//
//  Created by Erick Arias on 27/07/22.
//

import Foundation
struct ItemQueryModel: Codable {
    let data: [DataQueryModel]
    let links: [LinkQueryModel]
}
