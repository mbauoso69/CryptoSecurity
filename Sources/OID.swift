//
//  OID.swift
//  CryptoSecurity
//
//  Created by Kevin Wooten on 7/29/16.
//  Copyright © 2016 Outfox, Inc. All rights reserved.
//

import Foundation


public struct OID {

  public static let commonName                = ASN1.oid(of: 2, 5, 4, 3)                     // See: http://oid-info.com/get/2.5.4.3
  public static let countryName               = ASN1.oid(of: 2, 5, 4, 6)                     // See: http://oid-info.com/get/2.5.4.6
  public static let organizationName          = ASN1.oid(of: 2, 5, 4, 10)                    // See: http://oid-info.com/get/2.5.4.10
  public static let organizationUnitName      = ASN1.oid(of: 2, 5, 4, 11)                    // See: http://oid-info.com/get/2.5.4.11
  public static let userId                    = ASN1.oid(of: 0, 9, 2342, 19_200_300, 100, 1, 1)   // See: http://oid-info.com/get/0.9.2342.19200300.100.1.1
  public static let serialNumber              = ASN1.oid(of: 2, 5, 4, 5)                     // See: ]]http://oid-info.com/get/2.5.4.5

  public static let rsaEncryption             = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 1)        // See: http://oid-info.com/get/1.2.840.113549.1.1.1
  public static let sha1WithRSAEncryption     = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 5)        // See: http://oid-info.com/get/1.2.840.113549.1.1.5
  public static let sha256WithRSAEncryption   = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 11)       // See: http://oid-info.com/get/1.2.840.113549.1.1.11
  public static let sha384WithRSAEncryption   = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 12)       // See: http://oid-info.com/get/1.2.840.113549.1.1.12
  public static let sha512WithRSAEncryption   = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 13)       // See: http://oid-info.com/get/1.2.840.113549.1.1.13
  public static let sha224WithRSAEncryption   = ASN1.oid(of: 1, 2, 840, 113_549, 1, 1, 14)       // See: http://oid-info.com/get/1.2.840.113549.1.1.14
  public static let extensionRequest          = ASN1.oid(of: 1, 2, 840, 113_549, 1, 9, 14)       // See: http://oid-info.com/get/1.2.840.113549.1.9.14
  public static let extensionKeyUsage         = ASN1.oid(of: 2, 5, 29, 15)                   // See: http://oid-info.com/get/2.5.29.15

  public static func OIDFromRDNId(id: String) -> ASN1ObjectIdentifier {
    switch id {
    case "CN":
      return OID.commonName
    case "C":
      return OID.countryName
    case "O":
      return OID.organizationName
    case "OU":
      return OID.organizationUnitName
    case "UID":
      return OID.userId
    case "SN":
      return OID.serialNumber
    default:
      fatalError("Unsupported RDN ID")
    }
  }

  public static func RDNIdFromOID(oid: ASN1ObjectIdentifier) -> String {

    if oid.value == commonName.value {
      return "CN"
    }

    if oid.value == countryName.value {
      return "C"
    }

    if oid.value == organizationName.value {
      return "O"
    }

    if oid.value == organizationUnitName.value {
      return "OU"
    }

    if oid.value == userId.value {
      return "UID"
    }

    if oid.value == serialNumber.value {
      return "SN"
    }

    fatalError("Unsupported RDN ID")
  }

}