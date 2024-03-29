//
// ParamsRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Контейнер списка параметров. */
public struct ParamsRequestModel: Codable, JSONEncodable, Hashable {

    /** Список параметров. */
    public var paramsList: [ParamModel]?

    public init(paramsList: [ParamModel]? = nil) {
        self.paramsList = paramsList
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paramsList
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(paramsList, forKey: .paramsList)
    }
}

