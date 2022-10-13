//
// MailingMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель сообщения рассылки. */
public struct MailingMessageViewModel: Codable, JSONEncodable, Hashable {

    /** Текст. */
    public var text: String?
    /** Дополнительные параметры. */
    public var additionalInfo: [KeyValuePairOfStringAndString]?

    public init(text: String? = nil, additionalInfo: [KeyValuePairOfStringAndString]? = nil) {
        self.text = text
        self.additionalInfo = additionalInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case additionalInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(additionalInfo, forKey: .additionalInfo)
    }
}

