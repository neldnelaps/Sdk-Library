//
// CardActionAccessInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о возможности выполнять действия с картой. */
public struct CardActionAccessInfo: Codable, JSONEncodable, Hashable {

    /** Можно ли заблокировать. */
    public var canBlock: Bool?
    /** Можно ли заменить. */
    public var canReplace: Bool?

    public init(canBlock: Bool? = nil, canReplace: Bool? = nil) {
        self.canBlock = canBlock
        self.canReplace = canReplace
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case canBlock
        case canReplace
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(canBlock, forKey: .canBlock)
        try container.encodeIfPresent(canReplace, forKey: .canReplace)
    }
}

