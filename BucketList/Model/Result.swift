//
//  Result.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/12/14.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
}
