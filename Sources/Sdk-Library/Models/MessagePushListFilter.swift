//
// MessagePushListFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MessagePushListFilter: Codable, JSONEncodable, Hashable {

    public var dateFrom: Date?
    public var dateTo: Date?
    public var platformType: [PlatformType]?
    public var state: [NotificationMessageState]?
    public var header: String?
    public var personUid: UUID?

    public init(dateFrom: Date? = nil, dateTo: Date? = nil, platformType: [PlatformType]? = nil, state: [NotificationMessageState]? = nil, header: String? = nil, personUid: UUID? = nil) {
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.platformType = platformType
        self.state = state
        self.header = header
        self.personUid = personUid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dateFrom
        case dateTo
        case platformType
        case state
        case header
        case personUid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dateFrom, forKey: .dateFrom)
        try container.encodeIfPresent(dateTo, forKey: .dateTo)
        try container.encodeIfPresent(platformType, forKey: .platformType)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(personUid, forKey: .personUid)
    }
}

