//
//  Constants.swift
//  GHFollowers
//
//  Created by Sadiq Jatu on 26/04/26.
//

import UIKit

enum SFSymbols {
    
    static let location        = UIImage(systemName: "mappin.and.ellipse")
    static let repos           = UIImage(systemName: "folder")
    static let gists           = UIImage(systemName: "text.alignleft")
    static let following       = UIImage(systemName: "heart")
    static let followers       = UIImage(systemName: "person.2")
    static let magnifyingGlass = UIImage(systemName: "magnifyingglass")
    static let star            = UIImage(systemName: "star.fill")
}


enum Images {
    
    static let ghLogo      = UIImage(named: "gh-logo")
    static let placeholder = UIImage(named: "avatar-placeholder")
    static let emptyState  = UIImage(named: "empty-state-logo")
}


enum ScreenSize {
    
    static let width     = UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.first?.screen.bounds.width ?? 0
    static let height    = UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.first?.screen.bounds.height ?? 0
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}


enum DeviceType {
    
    static let idiom                    = UIDevice.current.userInterfaceIdiom
    static let nativeScale              = UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.first?.screen.nativeScale ?? 0
    static let scale                    = UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.first?.screen.scale ?? 0
    
    static let isiPhoneSE               = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed          = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard    = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed      = idiom == .phone && ScreenSize.maxLength == 736.0  && nativeScale < scale
    static let isiPhoneX                = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXSMaxAndXr       = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                   = idiom == .phone && ScreenSize.maxLength >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXSMaxAndXr
    }
}
