//
// ActionPlacementInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ActionPlacementInfo: Codable, JSONEncodable, Hashable {

    public var chainNumber: Int?
    public var eventType: OfferEventType?
    public var parentActionId: Int?

    public init(chainNumber: Int? = nil, eventType: OfferEventType? = nil, parentActionId: Int? = nil) {
        self.chainNumber = chainNumber
        self.eventType = eventType
        self.parentActionId = parentActionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chainNumber
        case eventType
        case parentActionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chainNumber, forKey: .chainNumber)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(parentActionId, forKey: .parentActionId)
    }
}

