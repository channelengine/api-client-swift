//
// ReturnAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ReturnAPI {
    /**
     Channel: Create Return
     
     - parameter model: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnDeclareForChannel(model: ChannelReturnRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        returnDeclareForChannelWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Channel: Create Return
     - POST /v2/returns/channel
     - For channels.                Mark (part of) an order as returned by the customer.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "Success" : true
}}]
     
     - parameter model: (body)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func returnDeclareForChannelWithRequestBuilder(model: ChannelReturnRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/returns/channel"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Merchant: Create Return
     
     - parameter model: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnDeclareForMerchant(model: MerchantReturnRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        returnDeclareForMerchantWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Merchant: Create Return
     - POST /v2/returns/merchant
     - For merchants.    Mark (part of) an order as returned by the customer.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "Success" : true
}}]
     
     - parameter model: (body)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func returnDeclareForMerchantWithRequestBuilder(model: MerchantReturnRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/returns/merchant"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Merchant: Get Returns
     
     - parameter createdSince: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetDeclaredByChannel(createdSince: Date, completion: @escaping ((_ data: CollectionOfMerchantReturnResponse?,_ error: Error?) -> Void)) {
        returnGetDeclaredByChannelWithRequestBuilder(createdSince: createdSince).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Merchant: Get Returns
     - GET /v2/returns/merchant
     - For merchants.    Get all returns created by the channel. This call is supposed  to be used by merchants. Channels should use the 'GET /v2/returns/channel'  call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 5,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 1.4658129805029452,
    "CustomerComment" : "CustomerComment",
    "MerchantOrderNo" : "MerchantOrderNo",
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "MerchantProductNo" : "MerchantProductNo"
    }, {
      "Quantity" : 0,
      "MerchantProductNo" : "MerchantProductNo"
    } ],
    "RefundInclVat" : 6.027456183070403
  }, {
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 1.4658129805029452,
    "CustomerComment" : "CustomerComment",
    "MerchantOrderNo" : "MerchantOrderNo",
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "MerchantProductNo" : "MerchantProductNo"
    }, {
      "Quantity" : 0,
      "MerchantProductNo" : "MerchantProductNo"
    } ],
    "RefundInclVat" : 6.027456183070403
  } ],
  "ItemsPerPage" : 2,
  "Count" : 5,
  "StatusCode" : 7,
  "Success" : true
}}]
     
     - parameter createdSince: (query)  

     - returns: RequestBuilder<CollectionOfMerchantReturnResponse> 
     */
    open class func returnGetDeclaredByChannelWithRequestBuilder(createdSince: Date) -> RequestBuilder<CollectionOfMerchantReturnResponse> {
        let path = "/v2/returns/merchant"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "createdSince": createdSince.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfMerchantReturnResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Channel: Get Returns
     
     - parameter createdSince: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetDeclaredByMerchant(createdSince: Date, completion: @escaping ((_ data: CollectionOfChannelReturnResponse?,_ error: Error?) -> Void)) {
        returnGetDeclaredByMerchantWithRequestBuilder(createdSince: createdSince).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Channel: Get Returns
     - GET /v2/returns/channel
     - For channels.                Get all returns created by the merchant. This call is supposed  to be used by channels. Merchants should use the 'GET /v2/returns/merchant'  call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 5,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "ChannelOrderNo" : "ChannelOrderNo",
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 1.4658129805029452,
    "CustomerComment" : "CustomerComment",
    "ChannelReturnNo" : "ChannelReturnNo",
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ],
    "RefundInclVat" : 6.027456183070403
  }, {
    "ChannelOrderNo" : "ChannelOrderNo",
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 1.4658129805029452,
    "CustomerComment" : "CustomerComment",
    "ChannelReturnNo" : "ChannelReturnNo",
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ],
    "RefundInclVat" : 6.027456183070403
  } ],
  "ItemsPerPage" : 2,
  "Count" : 5,
  "StatusCode" : 7,
  "Success" : true
}}]
     
     - parameter createdSince: (query)  

     - returns: RequestBuilder<CollectionOfChannelReturnResponse> 
     */
    open class func returnGetDeclaredByMerchantWithRequestBuilder(createdSince: Date) -> RequestBuilder<CollectionOfChannelReturnResponse> {
        let path = "/v2/returns/channel"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "createdSince": createdSince.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfChannelReturnResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
