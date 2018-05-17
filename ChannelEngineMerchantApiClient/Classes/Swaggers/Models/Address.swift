//
// Address.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Address: Codable {

    public enum Gender: String, Codable { 
        case male = "MALE"
        case female = "FEMALE"
        case notApplicable = "NOT_APPLICABLE"
    }
    public var gender: Gender?
    public var companyName: String?
    public var firstName: String?
    public var lastName: String?
    public var streetName: String?
    public var houseNr: String?
    public var houseNrAddition: String?
    public var zipCode: String?
    public var city: String?
    /** Optional. State/province/region */
    public var region: String?
    /** For example: NL, BE, FR */
    public var countryIso: String?
    /** Optional. The address as a single string: use in case the address lines are entered  as single lines and later parsed into street, house number and house number addition. */
    public var original: String?


    public enum CodingKeys: String, CodingKey { 
        case gender = "Gender"
        case companyName = "CompanyName"
        case firstName = "FirstName"
        case lastName = "LastName"
        case streetName = "StreetName"
        case houseNr = "HouseNr"
        case houseNrAddition = "HouseNrAddition"
        case zipCode = "ZipCode"
        case city = "City"
        case region = "Region"
        case countryIso = "CountryIso"
        case original = "Original"
    }


}

