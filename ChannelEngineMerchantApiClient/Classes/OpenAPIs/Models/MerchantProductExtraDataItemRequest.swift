//
// MerchantProductExtraDataItemRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MerchantProductExtraDataItemRequest: Codable { 


    /** Name of the extra data field. */
    public var key: String?
    /** Value of the extra data field. */
    public var value: String?
    public var type: ExtraDataType?
    /** Add this field to the export of the product feed to the channel. */
    public var isPublic: Bool?

    public init(key: String? = nil, value: String? = nil, type: ExtraDataType? = nil, isPublic: Bool? = nil) {
        self.key = key
        self.value = value
        self.type = type
        self.isPublic = isPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case key = "Key"
        case value = "Value"
        case type = "Type"
        case isPublic = "IsPublic"
    }

}
