//
// MerchantOrderResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class MerchantOrderResponse: Codable {

    public enum ChannelOrderSupport: String, Codable { 
        case _none = "NONE"
        case orders = "ORDERS"
        case splitOrders = "SPLIT_ORDERS"
        case splitOrderLines = "SPLIT_ORDER_LINES"
    }
    public enum Status: String, Codable { 
        case inProgress = "IN_PROGRESS"
        case shipped = "SHIPPED"
        case inBackorder = "IN_BACKORDER"
        case canceled = "CANCELED"
        case manco = "MANCO"
        case inCombi = "IN_COMBI"
        case closed = "CLOSED"
        case new = "NEW"
        case returned = "RETURNED"
        case requiresCorrection = "REQUIRES_CORRECTION"
    }
    /** The unique identifier used by ChannelEngine. This identifier does  not have to be saved. It should only be used in a call to acknowledge the order. */
    public var id: Int?
    public var channelName: String?
    public var channelOrderSupport: ChannelOrderSupport?
    public var channelOrderNo: String?
    public var status: Status?
    public var lines: [MerchantOrderLineResponse]?
    public var phone: String?
    public var email: String
    public var companyRegistrationNo: String?
    public var vatNo: String?
    public var paymentMethod: String
    /** The shipping fee including VAT  (in the tenant&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var shippingCostsInclVat: Double
    public var currencyCode: String
    public var orderDate: Date
    public var channelCustomerNo: String?
    public var billingAddress: EntitiesAddressModels
    public var shippingAddress: EntitiesAddressModels
    public var extraData: [String:String]?


    
    public init(id: Int?, channelName: String?, channelOrderSupport: ChannelOrderSupport?, channelOrderNo: String?, status: Status?, lines: [MerchantOrderLineResponse]?, phone: String?, email: String, companyRegistrationNo: String?, vatNo: String?, paymentMethod: String, shippingCostsInclVat: Double, currencyCode: String, orderDate: Date, channelCustomerNo: String?, billingAddress: EntitiesAddressModels, shippingAddress: EntitiesAddressModels, extraData: [String:String]?) {
        self.id = id
        self.channelName = channelName
        self.channelOrderSupport = channelOrderSupport
        self.channelOrderNo = channelOrderNo
        self.status = status
        self.lines = lines
        self.phone = phone
        self.email = email
        self.companyRegistrationNo = companyRegistrationNo
        self.vatNo = vatNo
        self.paymentMethod = paymentMethod
        self.shippingCostsInclVat = shippingCostsInclVat
        self.currencyCode = currencyCode
        self.orderDate = orderDate
        self.channelCustomerNo = channelCustomerNo
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
        self.extraData = extraData
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(channelName, forKey: "ChannelName")
        try container.encodeIfPresent(channelOrderSupport, forKey: "ChannelOrderSupport")
        try container.encodeIfPresent(channelOrderNo, forKey: "ChannelOrderNo")
        try container.encodeIfPresent(status, forKey: "Status")
        try container.encodeIfPresent(lines, forKey: "Lines")
        try container.encodeIfPresent(phone, forKey: "Phone")
        try container.encode(email, forKey: "Email")
        try container.encodeIfPresent(companyRegistrationNo, forKey: "CompanyRegistrationNo")
        try container.encodeIfPresent(vatNo, forKey: "VatNo")
        try container.encode(paymentMethod, forKey: "PaymentMethod")
        try container.encode(shippingCostsInclVat, forKey: "ShippingCostsInclVat")
        try container.encode(currencyCode, forKey: "CurrencyCode")
        try container.encode(orderDate, forKey: "OrderDate")
        try container.encodeIfPresent(channelCustomerNo, forKey: "ChannelCustomerNo")
        try container.encode(billingAddress, forKey: "BillingAddress")
        try container.encode(shippingAddress, forKey: "ShippingAddress")
        try container.encodeIfPresent(extraData, forKey: "ExtraData")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        channelName = try container.decodeIfPresent(String.self, forKey: "ChannelName")
        channelOrderSupport = try container.decodeIfPresent(ChannelOrderSupport.self, forKey: "ChannelOrderSupport")
        channelOrderNo = try container.decodeIfPresent(String.self, forKey: "ChannelOrderNo")
        status = try container.decodeIfPresent(Status.self, forKey: "Status")
        lines = try container.decodeIfPresent([MerchantOrderLineResponse].self, forKey: "Lines")
        phone = try container.decodeIfPresent(String.self, forKey: "Phone")
        email = try container.decode(String.self, forKey: "Email")
        companyRegistrationNo = try container.decodeIfPresent(String.self, forKey: "CompanyRegistrationNo")
        vatNo = try container.decodeIfPresent(String.self, forKey: "VatNo")
        paymentMethod = try container.decode(String.self, forKey: "PaymentMethod")
        shippingCostsInclVat = try container.decode(Double.self, forKey: "ShippingCostsInclVat")
        currencyCode = try container.decode(String.self, forKey: "CurrencyCode")
        orderDate = try container.decode(Date.self, forKey: "OrderDate")
        channelCustomerNo = try container.decodeIfPresent(String.self, forKey: "ChannelCustomerNo")
        billingAddress = try container.decode(EntitiesAddressModels.self, forKey: "BillingAddress")
        shippingAddress = try container.decode(EntitiesAddressModels.self, forKey: "ShippingAddress")
        extraData = try container.decodeIfPresent([String:String].self, forKey: "ExtraData")
    }
}

