//
//  DBActivityHelper.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import Foundation
import SQLite

class DBActivityHelper {
    static var historyActivityTable = Table("historyActivity")
    static let id = Expression<Int>("id")
    static let date = Expression<String?>("date")
    static let activity = Expression<String?>("activity")
    static let speed = Expression<String?>("speed")
    static let latLng = Expression<String?>("latLng")
    static let location = Expression<String?>("location")
    
    var activityData = [ActivityForm]()
    
    static func createActivityTable() {
        guard let database = DBActivity.sharedInstance.database else {
            print("Database connection error")
            return
        }
    
        do {
            try database.run(historyActivityTable.create(ifNotExists: true) { historyActivityTable in
                historyActivityTable.column(id, primaryKey: true)
                historyActivityTable.column(date)
                historyActivityTable.column(activity)
                historyActivityTable.column(speed)
                historyActivityTable.column(latLng)
                historyActivityTable.column(location)
            })
        } catch {
            print("historyActivityTable already exists: \(error)")
        }
    }
    
    static func insertActivity(historyActivity: ActivityForm) -> Bool? {
        var countRow: Int?
        
        guard let database = DBActivity.sharedInstance.database else {
            print("Database connection error")
            return nil
        }
        
        do {
            if let dateRow = historyActivity.date,
               let activityRow = historyActivity.activity,
               let speedRow = historyActivity.speed,
               let latLngRow = historyActivity.latLng,
               let locationRow = historyActivity.location {
                
                for data in try database.prepare("select count(*) from historyActivity") {
                    if let dataCountRow: Int64 = Optional(data[0]) as? Int64 {
                        countRow = Int(dataCountRow)
                        let limitCount = (countRow ?? 0) + 1
                        
                        if limitCount > 100 {
                            print("data limit over 20 = \(String(describing: countRow))")
                            for _ in try database.prepare("delete from historyActivity where id in (select id from historyActivity LIMIT 1)") {
                                try database.run(historyActivityTable.insert(date <- dateRow,
                                                                             activity <- activityRow,
                                                                             speed <- String(speedRow),
                                                                             latLng <- latLngRow,
                                                                             location <- locationRow))
                            }
                        } else {
                            print("data = \(String(describing: countRow))")
                            try database.run(historyActivityTable.insert(date <- dateRow,
                                                                         activity <- activityRow,
                                                                         speed <- String(speedRow),
                                                                         latLng <- latLngRow,
                                                                         location <- locationRow))
                            
                            print("insert history activity")
                        }
                    } else {
                        countRow = nil
                        try database.run(historyActivityTable.insert(date <- dateRow,
                                                                     activity <- activityRow,
                                                                     speed <- String(speedRow),
                                                                     latLng <- latLngRow,
                                                                     location <- locationRow))
                        
                        print("insert history activity")
                    }
                }
                
            }
        } catch let error {
            print("Insert history activity failed: \(error)")
            return false
        }
        
        return false
    }
    
    func selectActivityData() -> [ActivityForm] {
        var activityId: Int?
        var activityDate: String?
        var activityName: String?
        var activitySpeed: Double?
        var activityLatLng: String?
        var activityLocation: String?
        
        guard let database = DBActivity.sharedInstance.database else {
            print("Database connection error")
            return self.activityData
        }
        
        do {
            for data in try database.prepare("select * from historyActivity order by id desc") {

                if let dataId: Int64 = Optional(data[0]) as? Int64 {
                    activityId = Int(dataId)
                 } else {
                    activityId = nil
                 }
                
                if let dataDate: String = Optional(data[1]) as? String {
                    activityDate = dataDate
                } else {
                    activityDate = nil
                }

                if let dataName: String = Optional(data[2]) as? String {
                    activityName = dataName
                } else {
                    activityName = nil
                }
                
                if let dataSpeed: String = Optional(data[3]) as? String {
                    activitySpeed = Double(dataSpeed)
                } else {
                    activitySpeed = nil
                }
                
                if let dataLatLng: String = Optional(data[4]) as? String {
                    activityLatLng = dataLatLng
                } else {
                    activityLatLng = nil
                }
                
                if let dataLocation: String = Optional(data[5]) as? String {
                    activityLocation = dataLocation
                } else {
                    activityLocation = nil
                }
                
                let activity = ActivityForm(date: activityDate,
                                            activity: activityName,
                                            speed: activitySpeed ?? 0.0,
                                            latLng: activityLatLng ?? "",
                                            location: activityLocation ?? "")
                
                self.activityData.append(activity)
            }
        } catch {
           print("selectActivityData error")
        }
        
        return self.activityData
    }
}
