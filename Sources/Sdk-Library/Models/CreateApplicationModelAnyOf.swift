//
// CreateApplicationModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateApplicationModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор программы лояльности (Id). */
    public var loyaltyProgramId: Int?
    /** Список касс партнера. */
    public var devices: [DeviceBriefViewModel]?

    public init(loyaltyProgramId: Int? = nil, devices: [DeviceBriefViewModel]? = nil) {
        self.loyaltyProgramId = loyaltyProgramId
        self.devices = devices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case loyaltyProgramId
        case devices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(loyaltyProgramId, forKey: .loyaltyProgramId)
        try container.encodeIfPresent(devices, forKey: .devices)
    }
}
