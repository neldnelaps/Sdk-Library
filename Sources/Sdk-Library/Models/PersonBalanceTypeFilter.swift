//
// PersonBalanceTypeFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип баланса. */
public enum PersonBalanceTypeFilter: String, Codable, CaseIterable {
    case current = "Current"
    case withCheque = "WithCheque"
}