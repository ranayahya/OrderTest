//
//  BewaragesViewController.swift
//  HuliPizza
//
//  Created by Admin on 23/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class BewaragesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var bewarageTableView: UITableView!
    
    
    var bewarageList = [Bewarages]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var bewarage = Bewarages(bewaragename: "CaphoChinno ", bewaragedescription: "small")
        
        bewarageList += [bewarage]
        
        bewarage = Bewarages(bewaragename: "MochaChinno ", bewaragedescription: "Jumbo")
        
        bewarageList += [bewarage]
        
        bewarage = Bewarages(bewaragename: "Coke ", bewaragedescription: " Medium")
        
        bewarageList += [bewarage]
        bewarage = Bewarages(bewaragename: "Root Beer ", bewaragedescription: " Large ")
        
        bewarageList += [bewarage]
        
        
        setBewaragesUI()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bewarageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bewarageCell", for: indexPath) as! BewarageTVC
        
        let b = bewarageList[indexPath.row] as Bewarages
        
        cell.lblBewarageName.text =  b.bewarageName
        cell.lblBewarageDescription.text = b.bewarageDescription
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let b = bewarageList[indexPath.row] as Bewarages
        
        orderArray.append(b.bewarageName)
        orderDesc.append(b.bewarageDescription)
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Order";
        alertView.message = "Order is Selected";
        alertView.show();
    }
    
    
    func setBewaragesUI() {
        
         view.backgroundColor = UIColor.darkGray
        
//        view.backgroundColor = UIColor.init(colorLiteralRed: 240/255, green: 246/255, blue: 245/255, alpha: 2)
        
        let mainLabel = UILabel(frame: CGRect(x: 40, y:15, width: 250, height:30))
        mainLabel.text = "Huli Pizza Co"
        mainLabel.font = UIFont(name: "SFUIText-Bold", size: 50.0)
         mainLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        mainLabel.textColor = UIColor.white
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(mainLabel)
        
        let bewarageLbl = UILabel(frame: CGRect(x: 40, y:55, width: 200, height: 30))
        bewarageLbl.text = "Bewarages"
        bewarageLbl.font = UIFont(name: "SFUIText-Bold", size: 50.0)
         bewarageLbl.font = UIFont.boldSystemFont(ofSize: 19)
        bewarageLbl.textColor = UIColor.white
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(bewarageLbl)
        
        
        let backButton = UIButton(frame: CGRect(x: 60, y: 600, width: 140, height: 50))
        backButton.backgroundColor = UIColor.brown
        
        backButton.setTitle("Back", for: .normal)
        backButton.addTarget(self, action:#selector(self.backToMain(sender:)), for: .touchUpInside)
        
          backButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)
        
        
        view.addSubview(backButton)
        
        
        let doneButton = UIButton(frame: CGRect(x: 210, y: 600, width: 140, height: 50))
        doneButton.setTitle("Done", for: .normal)
        doneButton.addTarget(self, action:#selector(self.orderSelected(sender:)), for: .touchUpInside)
        
        doneButton.backgroundColor = UIColor.brown
        doneButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)

        
        view.addSubview(doneButton)
        
        
        
        
        
    }
    
    func backToMain(sender: UIButton!) {
        
        
        
        //                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //
        let nextViewController = storyboard?.instantiateViewController(withIdentifier: "main") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
           }
    
    
    
    func orderSelected(sender: UIButton!) {
        
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Order";
        alertView.message = "Bewarage Order Added in Order List";
        alertView.show();
    }
    
    
    
    
}
