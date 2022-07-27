//
//  MainCell.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import UIKit

class MainCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var ativityLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var latLngLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initUI()
    }
    
    func initUI() {
        self.locationLabel.sizeToFit()
    }
    
    func displayHistoryActivity(activity: ActivityForm) {
        self.dateLabel.text = "วันที่เริ่ม : " + "\(String(describing: activity.date ?? "-"))"
        self.ativityLabel.text = "กิจกรรม : " + "\(String(describing: activity.activity ?? "-"))"
        self.speedLabel.text = String(format: "ความเร็ว : %.1f", activity.speed ?? 0.0) + " Km/h"
        self.latLngLabel.text = "ละติจูด, ลองจิจูด : " + "\(String(describing: activity.latLng ?? ""))"
        self.locationLabel.text = "ตำเเหน่ง : \(String(describing: activity.location ?? ""))"
    }

}
