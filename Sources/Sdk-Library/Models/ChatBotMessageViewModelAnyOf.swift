//
// ChatBotMessageViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChatBotMessageViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Получатель. */
    public var recipient: String?
    /** Текст до изображения. */
    public var header: String?
    /** Адрес изображения. */
    public var imageUrl: String?
    public var state: NotificationMessageState?

    public init(recipient: String? = nil, header: String? = nil, imageUrl: String? = nil, state: NotificationMessageState? = nil) {
        self.recipient = recipient
        self.header = header
        self.imageUrl = imageUrl
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipient
        case header
        case imageUrl
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(state, forKey: .state)
    }
}
