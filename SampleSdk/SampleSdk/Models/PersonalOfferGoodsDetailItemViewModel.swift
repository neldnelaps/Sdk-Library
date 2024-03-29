//
// PersonalOfferGoodsDetailItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Детальная информация, связанная с товаром из персонального предложения. */
public struct PersonalOfferGoodsDetailItemViewModel: Codable, JSONEncodable, Hashable {

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
    public var discount: PersonalOfferDiscountViewModel?
    /** Коды товара. */
    public var codes: [PersonalOfferGoodsCodeViewModel]?
    /** Примечание. */
    public var annotation: String?
    /** Для детали определены магазины. */
    public var hasMerchants: Bool?
    /** Дата начала действия акции для детали. Если совпадает с акцией, то пусто. */
    public var detailBeginLocalDate: Date?
    /** Дата окончания действия акции для детали. Если совпадает с акцией, то пусто. */
    public var detailEndLocalDate: Date?

    public init(id: String? = nil, rewardThumbnail: AnyCodable? = nil, title: String? = nil, description: String? = nil, picture: UUID? = nil, goodsId: Int? = nil, discount: PersonalOfferDiscountViewModel? = nil, codes: [PersonalOfferGoodsCodeViewModel]? = nil, annotation: String? = nil, hasMerchants: Bool? = nil, detailBeginLocalDate: Date? = nil, detailEndLocalDate: Date? = nil) {
        self.id = id
        self.rewardThumbnail = rewardThumbnail
        self.title = title
        self.description = description
        self.picture = picture
        self.goodsId = goodsId
        self.discount = discount
        self.codes = codes
        self.annotation = annotation
        self.hasMerchants = hasMerchants
        self.detailBeginLocalDate = detailBeginLocalDate
        self.detailEndLocalDate = detailEndLocalDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rewardThumbnail
        case title
        case description
        case picture
        case goodsId
        case discount
        case codes
        case annotation
        case hasMerchants
        case detailBeginLocalDate
        case detailEndLocalDate
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
        try container.encodeIfPresent(discount, forKey: .discount)
        try container.encodeIfPresent(codes, forKey: .codes)
        try container.encodeIfPresent(annotation, forKey: .annotation)
        try container.encodeIfPresent(hasMerchants, forKey: .hasMerchants)
        try container.encodeIfPresent(detailBeginLocalDate, forKey: .detailBeginLocalDate)
        try container.encodeIfPresent(detailEndLocalDate, forKey: .detailEndLocalDate)
    }
}

