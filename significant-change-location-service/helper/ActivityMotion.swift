//
//  ActivityMotion.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import UIKit
import CoreMotion

extension NSNotification.Name {
    static let ActivityMotionHelper =  NSNotification.Name("location.source.motion")
}

class ActivityMotion : NSObject {
    
    static let shared = ActivityMotion()
    let activityManager = CMMotionActivityManager()
    var currentPriorityMotion: Int = 3
    var previousPriorityMotion: Int = 3
    
    func stopActivityUpdates() {
        self.activityManager.stopActivityUpdates()
    }

    func startActivityUpdates() {
        self.stopActivityUpdates()
        if CMMotionActivityManager.isActivityAvailable() {
            self.activityManager.startActivityUpdates(to: OperationQueue.main) { (data) in
                DispatchQueue.main.async {
                    if let activity = data {
                        NotificationCenter.default.post(name: .ActivityMotionHelper, object: activity)
                        let formatingDate = activity.startDate.HHmm()
                        
                        //MARK: Start Location
                        LocationHelper.shared.update()
                        
                        //MARK: หาทางกำหนด priority ของเเต่ละกิจกรรม
                        if CMMotionActivityConfidence(rawValue: activity.confidence.rawValue) == CMMotionActivityConfidence.high {
                        
                            if activity.automotive == true {
                                UserSession.shared.setCurrentPriorityMinInterval(interval: RemoteConfigHelper.shared.priorityTrackingMinVehicleInterval)
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinVehicleInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Automative || Min : \(RemoteConfigHelper.shared.defaultTrackingMinVehicleInterval)")
                                
                                UserSession.shared.setMotionName(motion: MotionName.Vehicle.rawValue)
                            } else if activity.cycling == true {
                                UserSession.shared.setCurrentPriorityMinInterval(interval: RemoteConfigHelper.shared.priorityTrackingMinCyclingInterval)
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinCyclingInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Cycling || Min : \(RemoteConfigHelper.shared.defaultTrackingMinCyclingInterval)")
                                
                                UserSession.shared.setMotionName(motion: MotionName.Cycling.rawValue)
                            } else if activity.running == true {
                                UserSession.shared.setCurrentPriorityMinInterval(interval: RemoteConfigHelper.shared.priorityTrackingMinRunningInterval)
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinRunningInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Running || Min : \(RemoteConfigHelper.shared.defaultTrackingMinRunningInterval)")
                                
                                UserSession.shared.setMotionName(motion: MotionName.Running.rawValue)
                            } else if activity.walking == true {
                                UserSession.shared.setCurrentPriorityMinInterval(interval: RemoteConfigHelper.shared.priorityTrackingMinWalkingInterval)
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinWalkingInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Walking || Min : \(RemoteConfigHelper.shared.defaultTrackingMinWalkingInterval)")
                                
                                UserSession.shared.setMotionName(motion: MotionName.Walking.rawValue)
                            } else if activity.stationary == true {
                                UserSession.shared.setCurrentPriorityMinInterval(interval: RemoteConfigHelper.shared.priorityTrackingMinInterval)
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Stationary || Min : \(RemoteConfigHelper.shared.defaultTrackingMinInterval)")
                                
                                UserSession.shared.setMotionName(motion: MotionName.Stationary.rawValue)
                            }
                            
                            self.previousPriorityMotion = UserSession.shared.getPreviousPriorityMinInterval()
                            self.currentPriorityMotion = UserSession.shared.getCurrentPriorityMinInterval()
                            print("self.currentPriorityMotion = \(self.currentPriorityMotion), self.previousPriorityMotion = \(self.previousPriorityMotion)")
                        } else {
                            UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinInterval)
                        }
                    }
                }
            }
        }
    }
    
    func getActivityData(motion: CMMotionActivity) -> CMMotionActivity {
        let motionData = motion
        return motionData
    }

    func loggingNotification(message: String){
        Logger.shared.debug(message)
        let debug = UserSession.shared.getDebugSettingForKeys(mode: .DebuggingNotificationEnabled)
        if debug {
            let content = UNMutableNotificationContent()
            content.title = "Activity Motion"
            content.body = message
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
            let request = UNNotificationRequest(identifier: "UpdaterNotification", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        }
    }
    
}

