//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 01/08/2024.
//

import Foundation

public struct User: Codable, Equatable, Sendable {

    // MARK: - Credentials Subtype
    struct Credentials: Codable, Equatable, Sendable {

        // MARK: - Properties
        public var email: String
        public var password: String
    }
    
    public struct Details: Codable, Equatable, Sendable {
        public let firstName: String?
        public let lastName: String?
        
        public init(firstName: String? = nil, lastName: String? = nil) {
            self.firstName = firstName
            self.lastName = lastName
        }
    }
    
    public struct Social: Codable, Equatable, Sendable {
        
        // MARK: - Properties
        public let email: String
        public let userID: String
        public let identityToken: Data?
        public let authorizationCode: Data?
        public let nonce: String?
        
        public init(email: String, userID: String, identityToken: Data?, authorizationCode: Data?, nonce: String?) {
              self.email = email
              self.userID = userID
              self.identityToken = identityToken
              self.authorizationCode = authorizationCode
              self.nonce = nonce
          }
    }
    
    // MARK: - Authentication Subtype
    public struct Authentication: Codable, Equatable, Sendable {
        
        public typealias AccessToken = String
        public typealias RefreshToken = String

        // MARK: - Properties
        public let accessToken: AccessToken
        public let refreshToken: RefreshToken
        public let expiresIn: TimeInterval
        public let creationDate: Date

        // MARK: - Initializer
        public init(accessToken: String, refreshToken: String, expiresIn: TimeInterval, creationDate: Date = Date()) {
            self.accessToken = accessToken
            self.refreshToken = refreshToken
            self.expiresIn = expiresIn
            self.creationDate = creationDate
        }

        // MARK: - Interface
        public var expirationDate: Date {
            return creationDate.advanced(by: expiresIn)
        }
        
        public func isValid(on date: Date) -> Bool {
            return expirationDate > date
        }

        // MARK: - Codable
        private enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
            case expiresIn = "expires_in"
            case refreshToken = "refresh_token"
            case creationDate = "creation_date"
        }
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.init(accessToken: try container.decode(AccessToken.self, forKey: .accessToken),
                      refreshToken: try container.decode(RefreshToken.self, forKey: .refreshToken),
                      expiresIn: try container.decode(TimeInterval.self, forKey: .expiresIn),
                      creationDate: try container.decodeIfPresent(Date.self, forKey: .creationDate) ?? .now)
        }
    }

    // MARK: - Properties
    public let email: String
    public let appleUserID: String?
    public var authentication: Authentication
}
