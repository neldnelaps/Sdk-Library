//
// CardInfoAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardInfoAllOf: Codable, JSONEncodable, Hashable {

    public var accumulated: MoneyViewModel?
    public var paid: MoneyViewModel?
    /** Информация о полученных средствах. */
    public var accumulatedInfo: [MoneyViewModel]?
    /** Информация о потраченных средствах. */
    public var paidInfo: [MoneyViewModel]?
    public var cardActionAccessInfo: CardActionAccessInfo?

    public init(accumulated: MoneyViewModel? = nil, paid: MoneyViewModel? = nil, accumulatedInfo: [MoneyViewModel]? = nil, paidInfo: [MoneyViewModel]? = nil, cardActionAccessInfo: CardActionAccessInfo? = nil) {
        self.accumulated = accumulated
        self.paid = paid
        self.accumulatedInfo = accumulatedInfo
        self.paidInfo = paidInfo
        self.cardActionAccessInfo = cardActionAccessInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accumulated
        case paid
        case accumulatedInfo
        case paidInfo
        case cardActionAccessInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accumulated, forKey: .accumulated)
        try container.encodeIfPresent(paid, forKey: .paid)
        try container.encodeIfPresent(accumulatedInfo, forKey: .accumulatedInfo)
        try container.encodeIfPresent(paidInfo, forKey: .paidInfo)
        try container.encodeIfPresent(cardActionAccessInfo, forKey: .cardActionAccessInfo)
    }
}

