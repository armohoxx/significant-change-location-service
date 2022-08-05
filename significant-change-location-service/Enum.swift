//
//  Enum.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import Foundation

enum DebugMode: String {
    case Debug = "debug"
    case DisplayFinalDailyHistory = "daily"
    case DebuggingNotificationEnabled = "notification"
    case CopyFCMToken = "fcmtoken"
}

enum MotionName: String {
    case Vehicle = "Automative"
    case Cycling = "Cycling"
    case Running = "Running"
    case Walking = "Walking"
    case Stationary = "Stationary"
}
