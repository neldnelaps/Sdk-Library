//
// GoodsAttributeFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр по атрибуту товара. */
public struct GoodsAttributeFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Идентификатор атрибута товара. */
    public var goodsAttributeId: Int?

    public init(name: String? = nil, processParameters: String? = nil, goodsAttributeId: Int? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.goodsAttributeId = goodsAttributeId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case goodsAttributeId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(goodsAttributeId, forKey: .goodsAttributeId)
    }
}
