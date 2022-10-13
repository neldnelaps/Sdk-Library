//
// CounterType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CounterType: String, Codable, CaseIterable {
    case original = "Original"
    case purchaseCounter = "PurchaseCounter"
    case multiplicityCounter = "MultiplicityCounter"
}