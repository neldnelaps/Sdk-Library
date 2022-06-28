//
// CCCVS.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о карте. */
public struct CCCVS: Codable, JSONEncodable, Hashable {

    public var aaa: MoneyViewModel?
    public var aaaaaa: MoneyViewModel?
    public var bbb: MoneyViewModel?
    public var cccvs: MoneyViewModel?

    public init(aaa: MoneyViewModel? = nil, aaaaaa: MoneyViewModel? = nil, bbb: MoneyViewModel? = nil, cccvs: MoneyViewModel? = nil) {
        self.aaa = aaa
        self.aaaaaa = aaaaaa
        self.bbb = bbb
        self.cccvs = cccvs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case aaa
        case aaaaaa
        case bbb
        case cccvs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aaa, forKey: .aaa)
        try container.encodeIfPresent(aaaaaa, forKey: .aaaaaa)
        try container.encodeIfPresent(bbb, forKey: .bbb)
        try container.encodeIfPresent(cccvs, forKey: .cccvs)
    }
}

