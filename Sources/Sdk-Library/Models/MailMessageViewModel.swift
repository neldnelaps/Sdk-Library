//
// MailMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel mail сообщений. */
public struct MailMessageViewModel: Codable, JSONEncodable, Hashable {

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
    /** Заголовок. */
    public var header: String?
    /** Адрес отправителя. */
    public var fromEmail: String?
    /** Получатель. */
    public var recipient: String?
    public var state: NotificationMessageState?
    /** Идентификатор типа подписки. */
    public var subscriptionTypeID: Int?

    public init(id: Int? = nil, body: String? = nil, creationDate: Date? = nil, changeDate: Date? = nil, gatewayId: Int? = nil, sentTime: Date? = nil, header: String? = nil, fromEmail: String? = nil, recipient: String? = nil, state: NotificationMessageState? = nil, subscriptionTypeID: Int? = nil) {
        self.id = id
        self.body = body
        self.creationDate = creationDate
        self.changeDate = changeDate
        self.gatewayId = gatewayId
        self.sentTime = sentTime
        self.header = header
        self.fromEmail = fromEmail
        self.recipient = recipient
        self.state = state
        self.subscriptionTypeID = subscriptionTypeID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case body
        case creationDate
        case changeDate
        case gatewayId
        case sentTime
        case header
        case fromEmail
        case recipient
        case state
        case subscriptionTypeID
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
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(fromEmail, forKey: .fromEmail)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(subscriptionTypeID, forKey: .subscriptionTypeID)
    }
}

