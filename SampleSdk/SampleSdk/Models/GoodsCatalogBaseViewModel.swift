//
// GoodsCatalogBaseViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель для элемента каталога товаров. */
public struct GoodsCatalogBaseViewModel: Codable, JSONEncodable, Hashable {

    /** Название. */
    public var name: String?
    /** Id. */
    public var id: Int?
    /** Код товара. */
    public var goodsCode: String?
    /** Id родительского каталога. */
    public var parentID: Int?
    /** Включено или нет. */
    public var isEnabled: Bool?
    public var checkState: CheckState?
    /** Идентификатор партнера. */
    public var partnerId: Int?

    public init(name: String? = nil, id: Int? = nil, goodsCode: String? = nil, parentID: Int? = nil, isEnabled: Bool? = nil, checkState: CheckState? = nil, partnerId: Int? = nil) {
        self.name = name
        self.id = id
        self.goodsCode = goodsCode
        self.parentID = parentID
        self.isEnabled = isEnabled
        self.checkState = checkState
        self.partnerId = partnerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case id
        case goodsCode
        case parentID
        case isEnabled
        case checkState
        case partnerId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(goodsCode, forKey: .goodsCode)
        try container.encodeIfPresent(parentID, forKey: .parentID)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(checkState, forKey: .checkState)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
    }
}

