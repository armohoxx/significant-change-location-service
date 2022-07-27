//
//  MainProtocols.swift
//  significant-change-location-service
//
//  Created phattarapon on 27/7/2565 BE.
//  Copyright © 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation
import CoreMotion

//MARK: Wireframe -
protocol MainWireframeProtocol: class {

}
//MARK: Presenter -
protocol MainPresenterProtocol: class {
    func notifyViewDidLoad()
    func selfFetchActivity()
    func notifyFetchHistoryActivity(activity: [ActivityForm])
    func notifyLocationFetched()
    func notifyDisplayGPSSpeed(speed: Double)
    func notifyDisplayLatLng(latLng: String)
    func notifyDisplayMotionData(motion: CMMotionActivity?, date: String)
    func notifyInsertHistoryActivity(activity: ActivityForm)
}

//MARK: Interactor -
protocol MainInteractorProtocol: class {
    var presenter: MainPresenterProtocol?  { get set }
    func addLocationObserver()
    func fetchHistoryActivity()
    func insertHistoryActivity(activity: ActivityForm)
}

//MARK: View -
protocol MainViewProtocol: class {
    var presenter: MainPresenterProtocol?  { get set }
    func displayLocationView(location: String)
    func displayGpsSpeed(speed: Double)
    func displayLatLng(latLng: String)
    func displayMotionData(date: String, activity: String)
    func displayConfidentActivity(confident: String)
    func displayActivityFetch(activity: [ActivityForm])
}
