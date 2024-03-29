//
// HistoryListModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel списка исторических записей. */
public struct HistoryListModel: Codable, JSONEncodable, Hashable {

    /** Всего записей. */
    public var allCount: Int?
    /** Строки. */
    public var rows: [HistoryItemModel]?

    public init(allCount: Int? = nil, rows: [HistoryItemModel]? = nil) {
        self.allCount = allCount
        self.rows = rows
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allCount
        case rows
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allCount, forKey: .allCount)
        try container.encodeIfPresent(rows, forKey: .rows)
    }
}

