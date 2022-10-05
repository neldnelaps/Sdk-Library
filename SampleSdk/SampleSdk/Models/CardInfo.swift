//
// CardInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о карте. */
public struct CardInfo: Codable, JSONEncodable, Hashable {

    /** Ифентификатор. */
    public var id: Int?
    public var state: CardState?
    /** Номер карты. */
    public var number: String?
    /** Баркод. */
    public var barCode: String?
    /** Заблокирована или нет. */
    public var block: Bool?
    /** Дата истечения карты. */
    public var expiryDate: Date?
    public var cardCategory: CardCategoryInfo?
    public var cardOwnerInfo: UserInfoBase?
    public var accumulated: MoneyViewModel?
    public var paid: MoneyViewModel?
    /** Информация о полученных средствах. */
    public var accumulatedInfo: [MoneyViewModel]?
    /** Информация о потраченных средствах. */
    public var paidInfo: [MoneyViewModel]?
    public var cardActionAccessInfo: CardActionAccessInfo?

    public init(id: Int? = nil, state: CardState? = nil, number: String? = nil, barCode: String? = nil, block: Bool? = nil, expiryDate: Date? = nil, cardCategory: CardCategoryInfo? = nil, cardOwnerInfo: UserInfoBase? = nil, accumulated: MoneyViewModel? = nil, paid: MoneyViewModel? = nil, accumulatedInfo: [MoneyViewModel]? = nil, paidInfo: [MoneyViewModel]? = nil, cardActionAccessInfo: CardActionAccessInfo? = nil) {
        self.id = id
        self.state = state
        self.number = number
        self.barCode = barCode
        self.block = block
        self.expiryDate = expiryDate
        self.cardCategory = cardCategory
        self.cardOwnerInfo = cardOwnerInfo
        self.accumulated = accumulated
        self.paid = paid
        self.accumulatedInfo = accumulatedInfo
        self.paidInfo = paidInfo
        self.cardActionAccessInfo = cardActionAccessInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case state
        case number
        case barCode
        case block
        case expiryDate
        case cardCategory
        case cardOwnerInfo
        case accumulated
        case paid
        case accumulatedInfo
        case paidInfo
        case cardActionAccessInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(barCode, forKey: .barCode)
        try container.encodeIfPresent(block, forKey: .block)
        try container.encodeIfPresent(expiryDate, forKey: .expiryDate)
        try container.encodeIfPresent(cardCategory, forKey: .cardCategory)
        try container.encodeIfPresent(cardOwnerInfo, forKey: .cardOwnerInfo)
        try container.encodeIfPresent(accumulated, forKey: .accumulated)
        try container.encodeIfPresent(paid, forKey: .paid)
        try container.encodeIfPresent(accumulatedInfo, forKey: .accumulatedInfo)
        try container.encodeIfPresent(paidInfo, forKey: .paidInfo)
        try container.encodeIfPresent(cardActionAccessInfo, forKey: .cardActionAccessInfo)
    }
}

