//
// BatchOperationsQueueInfoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BatchOperationsQueueInfoAnyOf: Codable, JSONEncodable, Hashable {

    public var state: BatchState?
    public var allOperationCount: Int?
    public var completedOperationCount: Int?
    public var errorOperationCount: Int?

    public init(state: BatchState? = nil, allOperationCount: Int? = nil, completedOperationCount: Int? = nil, errorOperationCount: Int? = nil) {
        self.state = state
        self.allOperationCount = allOperationCount
        self.completedOperationCount = completedOperationCount
        self.errorOperationCount = errorOperationCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case state
        case allOperationCount
        case completedOperationCount
        case errorOperationCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(allOperationCount, forKey: .allOperationCount)
        try container.encodeIfPresent(completedOperationCount, forKey: .completedOperationCount)
        try container.encodeIfPresent(errorOperationCount, forKey: .errorOperationCount)
    }
}
