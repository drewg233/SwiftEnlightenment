//
//  ViewController.swift
//  Project 28 - APICall
//
//  Created by Andrew Garcia on 4/3/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAPI()
    }
    
    func callAPI() {
        
        // First head here to sign up for your API Key https://home.openweathermap.org/users/sign_up
        // Then add the API key to the Constants.swift file.
        if (apiKey != "") {
            Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?zip=77069,us&appid=\(apiKey)")
                .responseJSON { response in
                    
                let json = JSON(response.result.value!)
                if let weather = json["weather"][0]["main"].string {
                    self.updateWeather(weather)
                }
            
            }
        } else {
            print("Please obtain your API Key first from https://home.openweathermap.org/users/sign_up")
        }
    
    }
    
    
    func updateWeather(weather: String) {
        self.weatherLabel.text = weather.uppercaseString
    }
    


}

