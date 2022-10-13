//
// ChatBotMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel chatbot сообщения. */
public struct ChatBotMessageViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Содержимое. */
    public var body: String?
    /** Дата создания. */
    public var creationDate: Date?
    /** Дата изменения. */
    public var changeDate: Date?
    /** Шлюз. */
    public var gatewayId: Int?
    /** Время отправки в шлюз. */
    public var sentTime: Date?
    /** Получатель. */
    public var recipient: String?
    /** Текст до изображения. */
    public var header: String?
    /** Адрес изображения. */
    public var imageUrl: String?
    public var state: NotificationMessageState?

    public init(id: Int? = nil, body: String? = nil, creationDate: Date? = nil, changeDate: Date? = nil, gatewayId: Int? = nil, sentTime: Date? = nil, recipient: String? = nil, header: String? = nil, imageUrl: String? = nil, state: NotificationMessageState? = nil) {
        self.id = id
        self.body = body
        self.creationDate = creationDate
        self.changeDate = changeDate
        self.gatewayId = gatewayId
        self.sentTime = sentTime
        self.recipient = recipient
        self.header = header
        self.imageUrl = imageUrl
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case body
        case creationDate
        case changeDate
        case gatewayId
        case sentTime
        case recipient
        case header
        case imageUrl
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(changeDate, forKey: .changeDate)
        try container.encodeIfPresent(gatewayId, forKey: .gatewayId)
        try container.encodeIfPresent(sentTime, forKey: .sentTime)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

