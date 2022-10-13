//
// CommunicationPersonalOfferModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель акции по персональным предложениям (в которых товары выбирает маркетолог), отображаемой клиентам. */
public struct CommunicationPersonalOfferModel: Codable, JSONEncodable, Hashable {

    /** Идентефикатор. */
    public var id: Int?
    /** Заголовок. */
    public var title: String?
    /** Детальное описание. */
    public var description: String?
    /** Краткое описание. */
    public var shortDescription: String?
    /** Дата начала. */
    public var begin: Date?
    /** Дата окончания. */
    public var end: Date?
    /** Маркетинговая компания. */
    public var marketingCampaignId: Int?
    public var rewardThumbnail: RewardThumbnailModel?
    /** Изображения акции. */
    public var images: [ImageViewModel]?
    public var rewardImage: FileViewModel?
    /** Список магазинов. */
    public var merchantIds: [Int]?
    /** Список ЦА. */
    public var targetGroupIds: [Int]?
    /** Признак удаления. */
    public var isArchived: Bool?
    /** Приоритет акции. */
    public var priority: Int?
    /** Список идентификаторов категорий рекламных материалов. */
    public var categories: [SimpleCategoryViewModel]?
    /** Бренды. */
    public var brandIds: [Int]?
    /** Название. */
    public var name: String?
    public var offer: OfferInfoShortViewModel?

    public init(id: Int? = nil, title: String? = nil, description: String? = nil, shortDescription: String? = nil, begin: Date? = nil, end: Date? = nil, marketingCampaignId: Int? = nil, rewardThumbnail: RewardThumbnailModel? = nil, images: [ImageViewModel]? = nil, rewardImage: FileViewModel? = nil, merchantIds: [Int]? = nil, targetGroupIds: [Int]? = nil, isArchived: Bool? = nil, priority: Int? = nil, categories: [SimpleCategoryViewModel]? = nil, brandIds: [Int]? = nil, name: String? = nil, offer: OfferInfoShortViewModel? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.shortDescription = shortDescription
        self.begin = begin
        self.end = end
        self.marketingCampaignId = marketingCampaignId
        self.rewardThumbnail = rewardThumbnail
        self.images = images
        self.rewardImage = rewardImage
        self.merchantIds = merchantIds
        self.targetGroupIds = targetGroupIds
        self.isArchived = isArchived
        self.priority = priority
        self.categories = categories
        self.brandIds = brandIds
        self.name = name
        self.offer = offer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case shortDescription
        case begin
        case end
        case marketingCampaignId
        case rewardThumbnail
        case images
        case rewardImage
        case merchantIds
        case targetGroupIds
        case isArchived
        case priority
        case categories
        case brandIds
        case name
        case offer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(begin, forKey: .begin)
        try container.encodeIfPresent(end, forKey: .end)
        try container.encodeIfPresent(marketingCampaignId, forKey: .marketingCampaignId)
        try container.encodeIfPresent(rewardThumbnail, forKey: .rewardThumbnail)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(rewardImage, forKey: .rewardImage)
        try container.encodeIfPresent(merchantIds, forKey: .merchantIds)
        try container.encodeIfPresent(targetGroupIds, forKey: .targetGroupIds)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(brandIds, forKey: .brandIds)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(offer, forKey: .offer)
    }
}

