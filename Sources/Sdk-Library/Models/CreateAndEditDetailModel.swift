//
// CreateAndEditDetailModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для обновления деталей акции. */
public struct CreateAndEditDetailModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: String?
    public var rewardThumbnail: RewardThumbnailModel?
    /** Заголовок. */
    public var title: String?
    /** Описание. */
    public var description: String?
    public var image: NewFileModel?

    public init(id: String? = nil, rewardThumbnail: RewardThumbnailModel? = nil, title: String? = nil, description: String? = nil, image: NewFileModel? = nil) {
        self.id = id
        self.rewardThumbnail = rewardThumbnail
        self.title = title
        self.description = description
        self.image = image
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rewardThumbnail
        case title
        case description
        case image
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(rewardThumbnail, forKey: .rewardThumbnail)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(image, forKey: .image)
    }
}

