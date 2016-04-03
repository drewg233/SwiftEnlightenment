//
//  View2.swift
//  Project 26 - SnapChatCamera
//
//  Created by Andrew Garcia on 4/3/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//


import UIKit
import AVFoundation


class View2: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var captureSession : AVCaptureSession?
    var stillImageOutput : AVCaptureStillImageOutput?
    var previewLayer : AVCaptureVideoPreviewLayer?

    
    @IBOutlet var cameraView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        previewLayer?.frame = cameraView.bounds
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
//        captureSession = AVCaptureSession()
//        captureSession?.sessionPreset = AVCaptureSessionPreset1920x1080
//        
//        let backCamera = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
//        
//        var error : NSError?
//        var input: AVCaptureDeviceInput!
//        do {
//            input = try AVCaptureDeviceInput(device: backCamera)
//        } catch let error1 as NSError {
//            error = error1
//            input = nil
//        }
//        
//        if (error == nil && captureSession?.canAddInput(input) != nil){
//            
//            captureSession?.addInput(input)
//            
//            stillImageOutput = AVCaptureStillImageOutput()
//            stillImageOutput?.outputSettings = [AVVideoCodecKey : AVVideoCodecJPEG]
//            
//            if (captureSession?.canAddOutput(stillImageOutput) != nil){
//                captureSession?.addOutput(stillImageOutput)
//                
//                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
//                previewLayer?.videoGravity = AVLayerVideoGravityResizeAspect
//                previewLayer?.connection.videoOrientation = AVCaptureVideoOrientation.Portrait
//                cameraView.layer.addSublayer(previewLayer!)
//                captureSession?.startRunning()
//                
//            }
//            
//            
//        }
        
        
        
        
        
        captureSession = AVCaptureSession()
        captureSession!.sessionPreset = AVCaptureSessionPresetPhoto
        
        //var backCamera = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        
        let videoDevices = AVCaptureDevice.devicesWithMediaType(AVMediaTypeVideo)
        var captureDevice:AVCaptureDevice! = nil
        
        for device in videoDevices{
            let device = device as! AVCaptureDevice
            if device.position == AVCaptureDevicePosition.Front {
                captureDevice = device
                break
            }
        }
        
        
//        let error: NSError?
//        let input = AVCaptureDeviceInput(device: captureDevice)
        
                var error : NSError?
                var input: AVCaptureDeviceInput!
                do {
                    input = try AVCaptureDeviceInput(device: captureDevice)
                } catch let error1 as NSError {
                    error = error1
                    input = nil
                }
        
        if error == nil && captureSession!.canAddInput(input) {
            captureSession!.addInput(input)
            
            stillImageOutput = AVCaptureStillImageOutput()
            stillImageOutput!.outputSettings = [AVVideoCodecKey: AVVideoCodecJPEG]
            if captureSession!.canAddOutput(stillImageOutput) {
                captureSession!.addOutput(stillImageOutput)
                
                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
                previewLayer!.videoGravity = AVLayerVideoGravityResizeAspect
                previewLayer!.connection?.videoOrientation = AVCaptureVideoOrientation.Portrait
                cameraView.layer.addSublayer(previewLayer!)
                
                captureSession!.startRunning()
            }
        }
        
        
        
        
        
        
        
    
    }

}

