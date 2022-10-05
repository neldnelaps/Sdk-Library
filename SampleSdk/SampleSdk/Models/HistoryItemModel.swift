//
// HistoryItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel исторической записи. */
public struct HistoryItemModel: Codable, JSONEncodable, Hashable {

    /** Уникальный идентификатор. */
    public var id: UUID?
    /** Дата/время события. */
    public var dateTime: Date?
    /** Тип события. */
    public var type: String?
    /** Идентификатор пользователя, к которому относится событие. */
    public var userId: Int?
    /** Дополнительные данные, позволяющие идентифицировать событие (номер карты, email итд). */
    public var identity: String?
    /** Описание. */
    public var description: String?
    public var location: LocationDataModel?
    /** Идентификатор партнера. */
    public var partnerId: UUID?
    /** Идентификатор брэнда. */
    public var brandId: UUID?
    public var brand: BrandHistoryViewModel?
    public var data: HistoryDataModel?

    public init(id: UUID? = nil, dateTime: Date? = nil, type: String? = nil, userId: Int? = nil, identity: String? = nil, description: String? = nil, location: LocationDataModel? = nil, partnerId: UUID? = nil, brandId: UUID? = nil, brand: BrandHistoryViewModel? = nil, data: HistoryDataModel? = nil) {
        self.id = id
        self.dateTime = dateTime
        self.type = type
        self.userId = userId
        self.identity = identity
        self.description = description
        self.location = location
        self.partnerId = partnerId
        self.brandId = brandId
        self.brand = brand
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case dateTime
        case type
        case userId
        case identity
        case description
        case location
        case partnerId
        case brandId
        case brand
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(identity, forKey: .identity)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(brandId, forKey: .brandId)
        try container.encodeIfPresent(brand, forKey: .brand)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

