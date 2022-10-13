//
// CouponEmissionFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CouponEmissionFilter: Codable, JSONEncodable, Hashable {

    public var changeDateFrom: Date?
    public var changeDateTo: Date?
    public var types: [CouponEmissionType]?
    public var partnerIds: [Int]?
    public var loyaltyProgramIds: [Int]?
    public var title: String?
    public var personId: Int?

    public init(changeDateFrom: Date? = nil, changeDateTo: Date? = nil, types: [CouponEmissionType]? = nil, partnerIds: [Int]? = nil, loyaltyProgramIds: [Int]? = nil, title: String? = nil, personId: Int? = nil) {
        self.changeDateFrom = changeDateFrom
        self.changeDateTo = changeDateTo
        self.types = types
        self.partnerIds = partnerIds
        self.loyaltyProgramIds = loyaltyProgramIds
        self.title = title
        self.personId = personId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case changeDateFrom
        case changeDateTo
        case types
        case partnerIds
        case loyaltyProgramIds
        case title
        case personId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(changeDateFrom, forKey: .changeDateFrom)
        try container.encodeIfPresent(changeDateTo, forKey: .changeDateTo)
        try container.encodeIfPresent(types, forKey: .types)
        try container.encodeIfPresent(partnerIds, forKey: .partnerIds)
        try container.encodeIfPresent(loyaltyProgramIds, forKey: .loyaltyProgramIds)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(personId, forKey: .personId)
    }
}
