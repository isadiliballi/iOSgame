//
//  ViewController.swift
//  KennyGame
//
//  Created by İsa Diliballı on 27.11.2018.
//  Copyright © 2018 İsa Diliballı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saniye: UILabel!
    @IBOutlet weak var skor: UILabel!
    @IBOutlet weak var yuksekskor: UILabel!
    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    @IBOutlet weak var kenny10: UIImageView!
    
    @IBOutlet weak var kenny11: UIImageView!
    @IBOutlet weak var kenny12: UIImageView!
    @IBOutlet weak var kenny13: UIImageView!
    @IBOutlet weak var kenny14: UIImageView!
    @IBOutlet weak var kenny15: UIImageView!
    
    @IBOutlet weak var kenny16: UIImageView!
    @IBOutlet weak var kenny17: UIImageView!
    @IBOutlet weak var kenny18: UIImageView!
    @IBOutlet weak var kenny19: UIImageView!
    @IBOutlet weak var kenny20: UIImageView!
    
    @IBOutlet weak var kenny21: UIImageView!
    @IBOutlet weak var kenny22: UIImageView!
    @IBOutlet weak var kenny23: UIImageView!
    @IBOutlet weak var kenny24: UIImageView!
    @IBOutlet weak var kenny25: UIImageView!
    
    @IBOutlet weak var kenny26: UIImageView!
    @IBOutlet weak var kenny27: UIImageView!
    @IBOutlet weak var kenny28: UIImageView!
    @IBOutlet weak var kenny29: UIImageView!
    @IBOutlet weak var kenny30: UIImageView!
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var kennyArray = [UIImageView]()
    @objc var hideTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buyukskor = UserDefaults.standard.object(forKey: "skorr")
        
        if(buyukskor == nil)
        {
            yuksekskor.text = "0"
        }
        if let yeniskor = buyukskor as? Int
        {
            yuksekskor.text = String(yeniskor)
        }
        
        skor.text = "Skor: \(score)"
     
        
        let rekor1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor10 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor11 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor12 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor13 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor14 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor15 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor16 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor17 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor18 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor19 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor20 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor21 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor22 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor23 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor24 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor25 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor26 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor27 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor28 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor29 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
        let rekor30 = UITapGestureRecognizer(target: self, action: #selector(ViewController.YSKOR))
    
         kenny1.isUserInteractionEnabled = true
         kenny2.isUserInteractionEnabled = true
         kenny3.isUserInteractionEnabled = true
         kenny4.isUserInteractionEnabled = true
         kenny5.isUserInteractionEnabled = true
         kenny6.isUserInteractionEnabled = true
         kenny7.isUserInteractionEnabled = true
         kenny8.isUserInteractionEnabled = true
         kenny9.isUserInteractionEnabled = true
         kenny10.isUserInteractionEnabled = true
         kenny11.isUserInteractionEnabled = true
         kenny12.isUserInteractionEnabled = true
         kenny13.isUserInteractionEnabled = true
         kenny14.isUserInteractionEnabled = true
         kenny15.isUserInteractionEnabled = true
         kenny16.isUserInteractionEnabled = true
         kenny17.isUserInteractionEnabled = true
         kenny18.isUserInteractionEnabled = true
         kenny19.isUserInteractionEnabled = true
         kenny20.isUserInteractionEnabled = true
         kenny21.isUserInteractionEnabled = true
         kenny22.isUserInteractionEnabled = true
         kenny23.isUserInteractionEnabled = true
         kenny24.isUserInteractionEnabled = true
         kenny25.isUserInteractionEnabled = true
         kenny26.isUserInteractionEnabled = true
         kenny27.isUserInteractionEnabled = true
         kenny28.isUserInteractionEnabled = true
         kenny29.isUserInteractionEnabled = true
         kenny30.isUserInteractionEnabled = true
        
        kenny1.addGestureRecognizer(rekor1)
        kenny2.addGestureRecognizer(rekor2)
        kenny3.addGestureRecognizer(rekor3)
        kenny5.addGestureRecognizer(rekor4)
        kenny5.addGestureRecognizer(rekor5)
        kenny6.addGestureRecognizer(rekor6)
        kenny7.addGestureRecognizer(rekor7)
        kenny8.addGestureRecognizer(rekor8)
        kenny9.addGestureRecognizer(rekor9)
        kenny10.addGestureRecognizer(rekor10)
        kenny11.addGestureRecognizer(rekor11)
        kenny12.addGestureRecognizer(rekor12)
        kenny13.addGestureRecognizer(rekor13)
        kenny14.addGestureRecognizer(rekor14)
        kenny15.addGestureRecognizer(rekor15)
        kenny16.addGestureRecognizer(rekor16)
        kenny17.addGestureRecognizer(rekor17)
        kenny18.addGestureRecognizer(rekor18)
        kenny19.addGestureRecognizer(rekor19)
        kenny20.addGestureRecognizer(rekor20)
        kenny21.addGestureRecognizer(rekor21)
        kenny22.addGestureRecognizer(rekor22)
        kenny23.addGestureRecognizer(rekor23)
        kenny24.addGestureRecognizer(rekor24)
        kenny25.addGestureRecognizer(rekor25)
        kenny26.addGestureRecognizer(rekor26)
        kenny27.addGestureRecognizer(rekor27)
        kenny28.addGestureRecognizer(rekor28)
        kenny29.addGestureRecognizer(rekor29)
        kenny30.addGestureRecognizer(rekor30)
        
        counter = 20
        saniye.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.KennySakla), userInfo: nil, repeats: true)
        
        kennyArray.append(kenny1)
        kennyArray.append(kenny2)
        kennyArray.append(kenny3)
        kennyArray.append(kenny4)
        kennyArray.append(kenny5)
        kennyArray.append(kenny6)
        kennyArray.append(kenny7)
        kennyArray.append(kenny8)
        kennyArray.append(kenny9)
        kennyArray.append(kenny10)
        kennyArray.append(kenny11)
        kennyArray.append(kenny12)
        kennyArray.append(kenny13)
        kennyArray.append(kenny14)
        kennyArray.append(kenny15)
        kennyArray.append(kenny16)
        kennyArray.append(kenny17)
        kennyArray.append(kenny18)
        kennyArray.append(kenny19)
        kennyArray.append(kenny20)
        kennyArray.append(kenny21)
        kennyArray.append(kenny22)
        kennyArray.append(kenny23)
        kennyArray.append(kenny24)
        kennyArray.append(kenny25)
        kennyArray.append(kenny26)
        kennyArray.append(kenny27)
        kennyArray.append(kenny28)
        kennyArray.append(kenny29)
        kennyArray.append(kenny30)
        KennySakla()
    }
    
    @objc func KennySakla()
    {
        for kenny in kennyArray
        {
            kenny.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(kennyArray.count - 1)))
        kennyArray[random].isHidden = false
    }
    
    @objc func countDown()
    {
        counter = counter - 1
        saniye.text = "\(counter)"
        
        if(counter == 0)
        {
            timer.invalidate()
            hideTimer.invalidate()
            
            if(self.score > Int(yuksekskor.text!)!)
            {
                UserDefaults.standard.set(self.score, forKey: "skorr")
                yuksekskor.text = String(self.score)
            }
            
            let alert = UIAlertController(title: "Zaman", message: "Süreniz Bitti", preferredStyle: UIAlertController.Style.alert)
            
            let TAMAM = UIAlertAction(title: "TAMAM", style: UIAlertAction.Style.cancel, handler: nil)
          
            
            let TEKRAR = UIAlertAction(title: "TEKRAR", style: UIAlertAction.Style.default, handler: { (UIAlertAction)
                in
                self.score = 0
                self.skor.text = "Skor: \(self.score)"
                self.counter = 30
                self.saniye.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.KennySakla), userInfo: nil, repeats: true)
            })
            
            alert.addAction(TEKRAR)
            alert.addAction(TAMAM)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func YSKOR()
{
    score = score + 1
    skor.text = "Skor: \(score)"
    }

}

