//
// ChannelShipmentLineResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ChannelShipmentLineResponse: Codable {

    public var channelProductNo: String
    public var quantity: Int


    
    public init(channelProductNo: String, quantity: Int) {
        self.channelProductNo = channelProductNo
        self.quantity = quantity
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(channelProductNo, forKey: "ChannelProductNo")
        try container.encode(quantity, forKey: "Quantity")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        channelProductNo = try container.decode(String.self, forKey: "ChannelProductNo")
        quantity = try container.decode(Int.self, forKey: "Quantity")
    }
}

