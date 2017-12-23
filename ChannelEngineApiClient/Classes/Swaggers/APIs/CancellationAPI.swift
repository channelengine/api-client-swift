//
// CancellationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CancellationAPI {
    /**
     Merchant: Create Cancellation
     
     - parameter cancellation: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancellationCreate(cancellation: MerchantCancellationRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        cancellationCreateWithRequestBuilder(cancellation: cancellation).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Merchant: Create Cancellation
     - POST /v2/cancellations
     - For merchants.    Mark (part of) an order as cancelled.
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
     
     - parameter cancellation: (body)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func cancellationCreateWithRequestBuilder(cancellation: MerchantCancellationRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/cancellations"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cancellation)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Channel: Get Cancellations
     
     - parameter createdSince: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancellationIndex(createdSince: Date, completion: @escaping ((_ data: CollectionOfChannelCancellationResponse?,_ error: Error?) -> Void)) {
        cancellationIndexWithRequestBuilder(createdSince: createdSince).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Channel: Get Cancellations
     - GET /v2/cancellations
     - For channels.    Gets all cancellations created since the supplied date.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 1,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "ChannelOrderNo" : "ChannelOrderNo",
    "Reason" : "Reason",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ]
  }, {
    "ChannelOrderNo" : "ChannelOrderNo",
    "Reason" : "Reason",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ]
  } ],
  "ItemsPerPage" : 5,
  "Count" : 6,
  "StatusCode" : 5,
  "Success" : true
}}]
     
     - parameter createdSince: (query)  

     - returns: RequestBuilder<CollectionOfChannelCancellationResponse> 
     */
    open class func cancellationIndexWithRequestBuilder(createdSince: Date) -> RequestBuilder<CollectionOfChannelCancellationResponse> {
        let path = "/v2/cancellations"
        let URLString = ChannelEngineApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "createdSince": createdSince.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfChannelCancellationResponse>.Type = ChannelEngineApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
