//
// SystemApiCardInfoModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SystemApiCardInfoModelAnyOf: Codable, JSONEncodable, Hashable {

    /** PIN-код. */
    public var pinCode: String?
    public var strips: StripNumbers?
    /** Возможна ли разблокировка карты (true-разблокировка возможна, false-разблокировка невозможна). */
    public var canUnBlocking: Bool?
    /** Признак необходимости CVC-кода для проверки карты (true-CVC-код необходим, false-CVC-код не требуется). */
    public var isCvcCodeRequired: Bool?

    public init(pinCode: String? = nil, strips: StripNumbers? = nil, canUnBlocking: Bool? = nil, isCvcCodeRequired: Bool? = nil) {
        self.pinCode = pinCode
        self.strips = strips
        self.canUnBlocking = canUnBlocking
        self.isCvcCodeRequired = isCvcCodeRequired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pinCode
        case strips
        case canUnBlocking
        case isCvcCodeRequired
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pinCode, forKey: .pinCode)
        try container.encodeIfPresent(strips, forKey: .strips)
        try container.encodeIfPresent(canUnBlocking, forKey: .canUnBlocking)
        try container.encodeIfPresent(isCvcCodeRequired, forKey: .isCvcCodeRequired)
    }
}

