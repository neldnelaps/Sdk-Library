//
// ConfigValueType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип значения. */
public enum ConfigValueType: String, Codable, CaseIterable {
    case integer = "Integer"
    case string = "String"
    case currencyExternalId = "CurrencyExternalId"
    case offerCategory = "OfferCategory"
    case pushGateway = "PushGateway"
}
