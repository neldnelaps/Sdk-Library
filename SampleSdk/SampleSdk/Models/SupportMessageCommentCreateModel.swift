//
// SupportMessageCommentCreateModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SupportMessageCommentCreateModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var subject: String?
    public var message: String?

    public init(id: Int? = nil, subject: String? = nil, message: String? = nil) {
        self.id = id
        self.subject = subject
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case subject
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

