//
// HistoryDataModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Данные в исторической записи. */
public struct HistoryDataModel: Codable, JSONEncodable, Hashable {

    public var amount: MoneyViewModel?

    public init(amount: MoneyViewModel? = nil) {
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}

