//
// SendMessageActionDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Действие акции \&quot;Отправка сообщения\&quot;. */
public struct SendMessageActionDto: Codable, JSONEncodable, Hashable {

    /** Порядковый номер действия в цепочке. */
    public var order: Int?
    /** Id действия в цепочке. */
    public var id: String?
    public var messageType: MessageType?
    /** Шаблон сообщения. */
    public var templateMessage: String?
    /** Короткий текст. */
    public var shortText: String?
    /** Заголовок. */
    public var subject: String?
    /** Идентификатор изображения. */
    public var imageId: UUID?
    /** Текст кнопки. */
    public var buttonText: String?
    /** URL страницы, на которую будет отправлен пользователь при нажатии на кнопку. */
    public var url: String?
    /** Включать в рассылку неверифицированные нотификаторы или нет. */
    public var includeUnverifiedNotifiers: Bool?

    public init(order: Int? = nil, id: String? = nil, messageType: MessageType? = nil, templateMessage: String? = nil, shortText: String? = nil, subject: String? = nil, imageId: UUID? = nil, buttonText: String? = nil, url: String? = nil, includeUnverifiedNotifiers: Bool? = nil) {
        self.order = order
        self.id = id
        self.messageType = messageType
        self.templateMessage = templateMessage
        self.shortText = shortText
        self.subject = subject
        self.imageId = imageId
        self.buttonText = buttonText
        self.url = url
        self.includeUnverifiedNotifiers = includeUnverifiedNotifiers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case id
        case messageType
        case templateMessage
        case shortText
        case subject
        case imageId
        case buttonText
        case url
        case includeUnverifiedNotifiers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(messageType, forKey: .messageType)
        try container.encodeIfPresent(templateMessage, forKey: .templateMessage)
        try container.encodeIfPresent(shortText, forKey: .shortText)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(imageId, forKey: .imageId)
        try container.encodeIfPresent(buttonText, forKey: .buttonText)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(includeUnverifiedNotifiers, forKey: .includeUnverifiedNotifiers)
    }
}

