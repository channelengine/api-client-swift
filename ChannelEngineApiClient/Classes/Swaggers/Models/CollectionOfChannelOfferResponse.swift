//
// CollectionOfChannelOfferResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CollectionOfChannelOfferResponse: Codable {

    public var content: [ChannelOfferResponse]?
    /** The number of items in the current response */
    public var count: Int?
    /** The total number of items */
    public var totalCount: Int?
    /** The number of items per page */
    public var itemsPerPage: Int?
    public var statusCode: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String:[String]]?


    
    public init(content: [ChannelOfferResponse]?, count: Int?, totalCount: Int?, itemsPerPage: Int?, statusCode: Int?, success: Bool?, message: String?, validationErrors: [String:[String]]?) {
        self.content = content
        self.count = count
        self.totalCount = totalCount
        self.itemsPerPage = itemsPerPage
        self.statusCode = statusCode
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(content, forKey: "Content")
        try container.encodeIfPresent(count, forKey: "Count")
        try container.encodeIfPresent(totalCount, forKey: "TotalCount")
        try container.encodeIfPresent(itemsPerPage, forKey: "ItemsPerPage")
        try container.encodeIfPresent(statusCode, forKey: "StatusCode")
        try container.encodeIfPresent(success, forKey: "Success")
        try container.encodeIfPresent(message, forKey: "Message")
        try container.encodeIfPresent(validationErrors, forKey: "ValidationErrors")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        content = try container.decodeIfPresent([ChannelOfferResponse].self, forKey: "Content")
        count = try container.decodeIfPresent(Int.self, forKey: "Count")
        totalCount = try container.decodeIfPresent(Int.self, forKey: "TotalCount")
        itemsPerPage = try container.decodeIfPresent(Int.self, forKey: "ItemsPerPage")
        statusCode = try container.decodeIfPresent(Int.self, forKey: "StatusCode")
        success = try container.decodeIfPresent(Bool.self, forKey: "Success")
        message = try container.decodeIfPresent(String.self, forKey: "Message")
        validationErrors = try container.decodeIfPresent([String:[String]].self, forKey: "ValidationErrors")
    }
}

