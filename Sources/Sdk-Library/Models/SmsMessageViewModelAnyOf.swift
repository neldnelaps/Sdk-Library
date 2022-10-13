//
// SmsMessageViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SmsMessageViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Получатель. */
    public var recipient: String?
    public var state: NotificationMessageState?
    public var type: SmsType?
    /** Длина Sms сообщения. */
    public var length: Int?

    public init(recipient: String? = nil, state: NotificationMessageState? = nil, type: SmsType? = nil, length: Int? = nil) {
        self.recipient = recipient
        self.state = state
        self.type = type
        self.length = length
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipient
        case state
        case type
        case length
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(length, forKey: .length)
    }
}
