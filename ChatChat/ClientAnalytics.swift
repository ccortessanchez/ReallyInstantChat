//
//  ClientAnalytics.swift
//  ChatChat
//
//  Created by User01 on 29/06/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import Foundation
import Firebase

class ClientAnalytics {
    static let createNewChannelEvent = "create_channel"
    static let openChannelChat = "open_channel"
    static let messageSent = "message_sent"
    static let photoMessageSent = "photo_message_sent"
    
    static func sendCreateNewChannelEvent (channelAdded: String) {
        Analytics.logEvent("create_channel", parameters: [AnalyticsParameterItemID: channelAdded as NSObject])
    }
    
    static func sendOpenChannelChat(channelOpened: String) {
        Analytics.logEvent("open_channel", parameters: [AnalyticsParameterItemID: channelOpened as NSObject])
    }
    
    static func sendMessageSendEvent(messageSent: String) {
        Analytics.logEvent("message_sent", parameters: [AnalyticsParameterItemID: messageSent as NSObject])
    }
    
    static func sendPhotoMessageSentEvent(photoMessageSent: String) {
        Analytics.logEvent("photo_message_sent", parameters: [AnalyticsParameterItemID: photoMessageSent as NSObject])
    }
    
}
