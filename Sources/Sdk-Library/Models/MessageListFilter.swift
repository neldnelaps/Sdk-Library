//
// MessageListFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MessageListFilter: Codable, JSONEncodable, Hashable {

    public var dateFrom: Date?
    public var dateTo: Date?
    public var phone: String?
    public var personUid: UUID?
    public var state: [NotificationMessageState]?

    public init(dateFrom: Date? = nil, dateTo: Date? = nil, phone: String? = nil, personUid: UUID? = nil, state: [NotificationMessageState]? = nil) {
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.phone = phone
        self.personUid = personUid
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dateFrom
        case dateTo
        case phone
        case personUid
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dateFrom, forKey: .dateFrom)
        try container.encodeIfPresent(dateTo, forKey: .dateTo)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(personUid, forKey: .personUid)
        try container.encodeIfPresent(state, forKey: .state)
    }
}
