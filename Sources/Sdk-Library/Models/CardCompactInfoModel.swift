//
// CardCompactInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel базовой информации о карте. */
public struct CardCompactInfoModel: Codable, JSONEncodable, Hashable {

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
    public var cardCategory: CardCategoryInfoBriefModel?

    public init(id: Int? = nil, state: CardState? = nil, number: String? = nil, barCode: String? = nil, block: Bool? = nil, expiryDate: Date? = nil, cardCategory: CardCategoryInfoBriefModel? = nil) {
        self.id = id
        self.state = state
        self.number = number
        self.barCode = barCode
        self.block = block
        self.expiryDate = expiryDate
        self.cardCategory = cardCategory
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case state
        case number
        case barCode
        case block
        case expiryDate
        case cardCategory
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
    }
}

