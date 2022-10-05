//
// CheckBoughtListModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CheckBoughtListModel: Codable, JSONEncodable, Hashable {

    public var rows: [String]?

    public init(rows: [String]? = nil) {
        self.rows = rows
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rows, forKey: .rows)
    }
}

