//
// AnnouncementModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель рекламного материала. */
public struct AnnouncementModel: Codable, JSONEncodable, Hashable {

    /** Id рекламного материала. */
    public var id: Int?
    /** Определят находится ли сущность в архиве. */
    public var isDeleted: Bool?
    /** Дата начала. */
    public var beginDate: Date?
    /** Дата окончания. */
    public var endDate: Date?
    /** Дата создания. */
    public var creationDate: Date?
    public var state: AnnouncementState?
    /** Атрибуты. */
    public var attributes: [AttributeValueModelBase]?
    public var relatedAnnouncementType: RelatedAnnouncementType?
    /** Название рекламы. */
    public var title: String?
    /** Id рекламного места. */
    public var spaceId: Int?
    /** Id партнера. */
    public var partnerId: Int?
    /** Id автора. */
    public var authorId: Int?
    /** Id связанной сущности. */
    public var relatedEntityId: Int?

    public init(id: Int? = nil, isDeleted: Bool? = nil, beginDate: Date? = nil, endDate: Date? = nil, creationDate: Date? = nil, state: AnnouncementState? = nil, attributes: [AttributeValueModelBase]? = nil, relatedAnnouncementType: RelatedAnnouncementType? = nil, title: String? = nil, spaceId: Int? = nil, partnerId: Int? = nil, authorId: Int? = nil, relatedEntityId: Int? = nil) {
        self.id = id
        self.isDeleted = isDeleted
        self.beginDate = beginDate
        self.endDate = endDate
        self.creationDate = creationDate
        self.state = state
        self.attributes = attributes
        self.relatedAnnouncementType = relatedAnnouncementType
        self.title = title
        self.spaceId = spaceId
        self.partnerId = partnerId
        self.authorId = authorId
        self.relatedEntityId = relatedEntityId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case isDeleted
        case beginDate
        case endDate
        case creationDate
        case state
        case attributes
        case relatedAnnouncementType
        case title
        case spaceId
        case partnerId
        case authorId
        case relatedEntityId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(beginDate, forKey: .beginDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relatedAnnouncementType, forKey: .relatedAnnouncementType)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(spaceId, forKey: .spaceId)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(authorId, forKey: .authorId)
        try container.encodeIfPresent(relatedEntityId, forKey: .relatedEntityId)
    }
}

