//
// EmailBindingFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель фильтра \&quot;Привязан E-Mail\&quot;. */
public struct EmailBindingFilterViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    /** Привязан E-Mail или нет. */
    public var emailBinded: Bool?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, emailBinded: Bool? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.emailBinded = emailBinded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case emailBinded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(emailBinded, forKey: .emailBinded)
    }
}

