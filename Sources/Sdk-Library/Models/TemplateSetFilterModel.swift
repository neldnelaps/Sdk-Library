//
// TemplateSetFilterModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TemplateSetFilterModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var isDeleted: Bool?
    public var from: Int?
    public var count: Int?
    public var loyaltyProgramsIds: [Int]?
    public var partnersIds: [Int]?
    public var authorsIds: [Int]?

    public init(name: String? = nil, isDeleted: Bool? = nil, from: Int? = nil, count: Int? = nil, loyaltyProgramsIds: [Int]? = nil, partnersIds: [Int]? = nil, authorsIds: [Int]? = nil) {
        self.name = name
        self.isDeleted = isDeleted
        self.from = from
        self.count = count
        self.loyaltyProgramsIds = loyaltyProgramsIds
        self.partnersIds = partnersIds
        self.authorsIds = authorsIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case isDeleted
        case from
        case count
        case loyaltyProgramsIds
        case partnersIds
        case authorsIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(loyaltyProgramsIds, forKey: .loyaltyProgramsIds)
        try container.encodeIfPresent(partnersIds, forKey: .partnersIds)
        try container.encodeIfPresent(authorsIds, forKey: .authorsIds)
    }
}
