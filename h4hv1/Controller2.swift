//
//  Controller2.swift
//  h4hv1
//
//  Created by Megan Wiser on 2/12/22.
//
//NOTE NOTE NOTE NOTE NOTE
//THE BUTTON DOES NOT WORK

import Foundation
import UIKit

class Controller2: UIViewController{
    
    @IBOutlet weak var TimerLabel: UILabel!
    
    let startTimeCarry = "01:30:00" //will be start time carried over from the original page
    
    var count = 45
    var hIter = 0
    var mIter = 0
    
    var hour = 0
    var min = 0
    
    var nSec = 0
    
   func convertStringToUsableInt(){
        let HHcMMcSS_String = shareTime.sTime.split(separator: ":")
        
        let date = Date()
        let calendar = Calendar.current
        let nHour = calendar.component(.hour, from: date)
        let nMin = calendar.component(.minute, from: date)
        nSec = calendar.component(.second, from: date)
        
        let sHour = Int(HHcMMcSS_String[0]) ?? 0
        let sMin = Int(HHcMMcSS_String[1]) ?? 10
        
        min = abs(sMin - nMin)
       
       if(((0 < sHour) && (sHour < 6)) && (nHour > 12)){
           hour = 24 - nHour
           hour += sHour
       }
       else{
           hour = abs(sHour - nHour)
       }
        
        count = (hour * 3600) //convert hour to seconds
        count += (min * 60) //convert minute to seconds
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        convertStringToUsableInt()
        
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerStart), userInfo: nil, repeats:true)
    }
    
    @IBAction func TimerStart() {
        if(count > 0){
            var countHour = abs(hour)
            var countMin = abs(min)
            var countSec = 60 - nSec //not really that great but works enough for me
            
            if(mIter < 60){
                countMin -= 1
            }
            else{
                countMin -= 1
                mIter = 0
                hIter += 1
            }
            
            if(hIter < 60){
                countHour -= 1
            }
            else{
                hIter = 0
            }
            
            countSec = count - (countHour*3600) - (countMin * 60) - 3600
            
            if(countHour < 0){
                countHour = 0
            }
            if(countMin < 0){
                countMin = 0
            }
            
            var chs = "0"
            var cms = "0"
            var css = "0"
            
            if(countHour < 10){
                chs += String(countHour)
            }
            else{
                chs = String(countHour)
            }
            
            if(countMin < 10){
                cms += String(countMin)
            }
            else{
                cms = String(countMin)
            }
            
            if(countSec < 10){
                css += String(countSec)
            }
            else{
                css = String(countSec)
            }
            
            let display = "\(chs):\(cms):\(css)"
            
            TimerLabel.text = String(display)
            count -= 1
            
            mIter += 1
        }
    }
    
}
