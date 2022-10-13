//
// GoodsDetailItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Детальная информация, связанная с товаром. */
public struct GoodsDetailItem: Codable, JSONEncodable, Hashable {

    /** Идентификатор детали. */
    public var id: String?
    /** Вознаграждение. */
    public var rewardThumbnail: AnyCodable?
    /** Заголовок. */
    public var title: String?
    /** Описание. */
    public var description: String?
    /** Изображение. */
    public var picture: UUID?
    /** Идентификатор товара. */
    public var goodsId: Int?

    public init(id: String? = nil, rewardThumbnail: AnyCodable? = nil, title: String? = nil, description: String? = nil, picture: UUID? = nil, goodsId: Int? = nil) {
        self.id = id
        self.rewardThumbnail = rewardThumbnail
        self.title = title
        self.description = description
        self.picture = picture
        self.goodsId = goodsId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rewardThumbnail
        case title
        case description
        case picture
        case goodsId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(rewardThumbnail, forKey: .rewardThumbnail)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(picture, forKey: .picture)
        try container.encodeIfPresent(goodsId, forKey: .goodsId)
    }
}
