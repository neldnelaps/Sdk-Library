//
// CardCategoryFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Категория карты\&quot;. */
public struct CardCategoryFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Список идентификаторов выбранных категорий карт. */
    public var cardCategoryIds: [Int]?

    public init(name: String? = nil, processParameters: String? = nil, cardCategoryIds: [Int]? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.cardCategoryIds = cardCategoryIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case cardCategoryIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(cardCategoryIds, forKey: .cardCategoryIds)
    }
}

