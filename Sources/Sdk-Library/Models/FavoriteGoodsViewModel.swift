//
// FavoriteGoodsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GoodViewModel. */
public struct FavoriteGoodsViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор. */
    public var id: Int?
    /** Начальная дата периода. */
    public var fromDate: Date?
    /** Конечная дата периода. */
    public var toDate: Date?
    /** Количество ячеек по умолчанию. */
    public var defaultGoodsCount: Int?
    /** Максимальное количество ячеек. */
    public var maxGoodsCount: Int?
    /** Внутренний идентификатор Партнера. */
    public var partnerId: Int?
    /** CodeGood. */
    public var codeGood: String?
    /** BarCode. */
    public var barCode: String?
    /** Name. */
    public var name: String?

    public init(id: Int? = nil, fromDate: Date? = nil, toDate: Date? = nil, defaultGoodsCount: Int? = nil, maxGoodsCount: Int? = nil, partnerId: Int? = nil, codeGood: String? = nil, barCode: String? = nil, name: String? = nil) {
        self.id = id
        self.fromDate = fromDate
        self.toDate = toDate
        self.defaultGoodsCount = defaultGoodsCount
        self.maxGoodsCount = maxGoodsCount
        self.partnerId = partnerId
        self.codeGood = codeGood
        self.barCode = barCode
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fromDate
        case toDate
        case defaultGoodsCount
        case maxGoodsCount
        case partnerId
        case codeGood
        case barCode
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(fromDate, forKey: .fromDate)
        try container.encodeIfPresent(toDate, forKey: .toDate)
        try container.encodeIfPresent(defaultGoodsCount, forKey: .defaultGoodsCount)
        try container.encodeIfPresent(maxGoodsCount, forKey: .maxGoodsCount)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(codeGood, forKey: .codeGood)
        try container.encodeIfPresent(barCode, forKey: .barCode)
        try container.encodeIfPresent(name, forKey: .name)
    }
}
