//
// SupportMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SupportMessage: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var dateTime: Date?
    public var userLogin: String?
    public var closed: Bool?
    public var subject: String?

    public init(id: String? = nil, dateTime: Date? = nil, userLogin: String? = nil, closed: Bool? = nil, subject: String? = nil) {
        self.id = id
        self.dateTime = dateTime
        self.userLogin = userLogin
        self.closed = closed
        self.subject = subject
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case dateTime
        case userLogin
        case closed
        case subject
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        try container.encodeIfPresent(userLogin, forKey: .userLogin)
        try container.encodeIfPresent(closed, forKey: .closed)
        try container.encodeIfPresent(subject, forKey: .subject)
    }
}

