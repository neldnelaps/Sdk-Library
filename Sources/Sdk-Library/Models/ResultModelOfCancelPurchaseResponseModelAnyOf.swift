//
// ResultModelOfCancelPurchaseResponseModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResultModelOfCancelPurchaseResponseModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Данные. */
    public var data: [CancelPurchaseOperationResultModel]?

    public init(data: [CancelPurchaseOperationResultModel]? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
