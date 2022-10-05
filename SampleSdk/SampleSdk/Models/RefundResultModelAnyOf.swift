//
// RefundResultModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RefundResultModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Тип возврата. */
    public var refundOperationType: String?

    public init(refundOperationType: String? = nil) {
        self.refundOperationType = refundOperationType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case refundOperationType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(refundOperationType, forKey: .refundOperationType)
    }
}
