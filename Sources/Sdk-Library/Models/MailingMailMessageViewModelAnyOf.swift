//
// MailingMailMessageViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MailingMailMessageViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Заголовок. */
    public var header: String?

    public init(header: String? = nil) {
        self.header = header
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case header
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(header, forKey: .header)
    }
}

