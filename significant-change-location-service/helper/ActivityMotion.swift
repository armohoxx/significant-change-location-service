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
                        
                        if CMMotionActivityConfidence(rawValue: activity.confidence.rawValue) == CMMotionActivityConfidence.high {
                        
                            if activity.automotive == true {
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinVehicleInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Automative || Min : \(RemoteConfigHelper.shared.defaultTrackingMinVehicleInterval)")
                                
                                UserDefaults.standard.set("อยู่บนรถ", forKey: "stored_motion")
                            } else if activity.cycling == true {
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinCyclingInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Cycling || Min : \(RemoteConfigHelper.shared.defaultTrackingMinCyclingInterval)")
                                
                                UserDefaults.standard.set("ปั่นจักรยาน", forKey: "stored_motion")
                            } else if activity.running == true {
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinRunningInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Running || Min : \(RemoteConfigHelper.shared.defaultTrackingMinRunningInterval)")
                                
                                UserDefaults.standard.set("วิ่ง", forKey: "stored_motion")
                            } else if activity.walking == true {
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinWalkingInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Walking || Min : \(RemoteConfigHelper.shared.defaultTrackingMinWalkingInterval)")
                                
                                UserDefaults.standard.set("เดิน", forKey: "stored_motion")
                            } else if activity.stationary == true {
                                UserSession.shared.setTrackingMinInterval(interval: RemoteConfigHelper.shared.defaultTrackingMinInterval)
                                self.loggingNotification(message: "Activity Motion : \(formatingDate) | Stationary || Min : \(RemoteConfigHelper.shared.defaultTrackingMinInterval)")
                                
                                UserDefaults.standard.set("ไม่มีการเคลื่อนไหว", forKey: "stored_motion")
                            }
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

