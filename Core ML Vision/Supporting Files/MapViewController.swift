//
//  MapViewController.swift
//  
//
//  Created by Mansi Gandhi on 1/26/19.
//

import Foundation
import UIKit
import AVFoundation
import Vision
import GoogleMaps

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 37.329114, longitude: -121.891569, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.329114, longitude: -121.891569)
        marker.title = "San Jose"
        marker.snippet = "United States"
        marker.map = mapView
        
        //marker1 for recycling
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 37.329751, longitude: -121.892469)
        marker1.title = "RST Recycling Co"
        marker1.snippet = "San Jose, CA, United States"
        marker1.map = mapView
        marker1.icon = GMSMarker.markerImage(with: .blue)
        
        //marker2 for composting
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 37.329387, longitude: -121.890482)
        marker2.title = "GreenMouse Recycling"
        marker2.snippet = "San Jose, CA, United States"
        marker2.map = mapView
        marker2.icon = GMSMarker.markerImage(with: .green)
        
        //marker3 for composting
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 37.328414, longitude: -121.893186)
        marker3.title = "Valley Recycling"
        marker3.snippet = "San Jose, CA, United Statess"
        marker3.map = mapView
        marker3.icon = GMSMarker.markerImage(with: .green)
        
        //marker4 for recycling
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 37.327834, longitude: -121.890532)
        marker4.title = "Carustar Recycling"
        marker4.snippet = "San Jose, CA, United States"
        marker4.map = mapView
        marker4.icon = GMSMarker.markerImage(with: .blue)
        
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("You finished!")
    }
    

}
//
//  MapViewController.swift
//  Core ML Vision
//
//  Created by Mansi Gandhi on 1/26/19.
//



//class ViewController: UIViewController {
//
//
//    func setupCaptureSession() {
//
//        // creates a new capture session
//        let captureSession = AVCaptureSession()
//        // search for available capture devices
//        let availableDevices = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .back).devices
//        // get capture device, add device input to capture session
//        do {
//            if let captureDevice = availableDevices.first {
//                captureSession.addInput(try AVCaptureDeviceInput(device: captureDevice))
//            }
//        } catch {
//            print(error.localizedDescription)
//        }
//        let captureOutput = AVCaptureVideoDataOutput()
//        captureSession.addOutput(captureOutput)
//
//        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
//        previewLayer.frame = view.frame
//        view.layer.addSublayer(previewLayer)
//
//        captureSession.startRunning()
//
//    }
//
//}
