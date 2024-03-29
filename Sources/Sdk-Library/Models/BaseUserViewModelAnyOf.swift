//
// BaseUserViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BaseUserViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Идентификатор пользователя. */
    public var id: Int?
    /** Уникальный идентификатор пользователя. */
    public var personUid: String?

    public init(id: Int? = nil, personUid: String? = nil) {
        self.id = id
        self.personUid = personUid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case personUid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(personUid, forKey: .personUid)
    }
}

