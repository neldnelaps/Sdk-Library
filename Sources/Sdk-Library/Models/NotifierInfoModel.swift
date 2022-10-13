//
// NotifierInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotifierInfoModel: Codable, JSONEncodable, Hashable {

    public var currentValue: String?
    public var attachDateTime: Date?
    public var attachType: CustomerActionType?
    public var isVerified: Bool?

    public init(currentValue: String? = nil, attachDateTime: Date? = nil, attachType: CustomerActionType? = nil, isVerified: Bool? = nil) {
        self.currentValue = currentValue
        self.attachDateTime = attachDateTime
        self.attachType = attachType
        self.isVerified = isVerified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentValue
        case attachDateTime
        case attachType
        case isVerified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentValue, forKey: .currentValue)
        try container.encodeIfPresent(attachDateTime, forKey: .attachDateTime)
        try container.encodeIfPresent(attachType, forKey: .attachType)
        try container.encodeIfPresent(isVerified, forKey: .isVerified)
    }
}
