//
// NotificationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Сообщение пользователю. */
public struct NotificationViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор оповещения. */
    public var id: Int?
    /** Заголовок оповещения. */
    public var title: String?
    /** Содержимое оповещения. */
    public var body: String?
    /** Краткое содержание оповещения. */
    public var summary: String?
    /** Дата и время отправки оповещения. */
    public var creationDate: Date?
    /** Прочитано ли оповещение. */
    public var isReaded: Bool?
    /** Идентификатор прикрепленного изображения. */
    public var imageId: UUID?
    /** Url прикрепленного изображения. */
    public var imageUrl: String?

    public init(id: Int? = nil, title: String? = nil, body: String? = nil, summary: String? = nil, creationDate: Date? = nil, isReaded: Bool? = nil, imageId: UUID? = nil, imageUrl: String? = nil) {
        self.id = id
        self.title = title
        self.body = body
        self.summary = summary
        self.creationDate = creationDate
        self.isReaded = isReaded
        self.imageId = imageId
        self.imageUrl = imageUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case body
        case summary
        case creationDate
        case isReaded
        case imageId
        case imageUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(isReaded, forKey: .isReaded)
        try container.encodeIfPresent(imageId, forKey: .imageId)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
    }
}
