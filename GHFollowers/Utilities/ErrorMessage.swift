//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Sadiq Jatu on 09/04/26.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "The username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "Unable to favorite the user. Please try again."
    case alreadyInFavorite = "You have already favorited this user."
}
