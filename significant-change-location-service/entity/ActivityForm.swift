//
//  ActivityForm.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import UIKit

struct ActivityForm {
    var id: Int?
    var date: String?
    var activity: String?
    var speed: Double?
    var latLng: String?
    var location: String?

    init(date: String?, activity: String?, speed: Double, latLng: String, location: String) {
        self.date = date
        self.activity = activity
        self.speed = speed
        self.latLng = latLng
        self.location = location
    }
    
    init() {
        self.id = 0
        self.date = ""
        self.activity = ""
        self.speed = 0.0
        self.latLng = ""
        self.location = ""
    }
}
