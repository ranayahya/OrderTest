//
//  DessertsViewController.swift
//  HuliPizza
//
//  Created by Admin on 22/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class DessertsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var desertTableView: UITableView!
    
    var dessertList = [Desserts]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dessert = Desserts(dessertname: "Mango Key Lime Pie", dessertdescription: "Small")
        
        dessertList += [dessert]
        
        dessert = Desserts(dessertname: "Duke Pie", dessertdescription: "Large")
        
        dessertList += [dessert]
        
        dessert = Desserts(dessertname: "Hula Hot", dessertdescription: "Medium")
        
        dessertList += [dessert]
        
        dessert = Desserts(dessertname: "Choclate Surfing", dessertdescription: "Large")
        
        dessertList += [dessert]
        
       
        
        
        
        // setDessertUI()
        setDessertsUI()
        
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
        
        return dessertList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = desertTableView.dequeueReusableCell(withIdentifier: "dessertCell", for: indexPath)
            as! DessertTVC
        
        let d = dessertList[indexPath.row] as Desserts
        cell.lblDessertName.text = d.dessertName
        cell.lblDessertDescription.text = d.dessertDescription
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let d = dessertList[indexPath.row] as Desserts
        
        orderArray.append(d.dessertName)
        orderDesc.append(d.dessertDescription)
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Dessert Order";
        alertView.message = "Dessert Order is Selected";
        alertView.show();
        
        
    }
    
    
    func setDessertsUI() {
         view.backgroundColor = UIColor.darkGray
        
//        view.backgroundColor = UIColor.init(colorLiteralRed: 240/255, green: 246/255, blue: 245/255, alpha: 2)
        
        let mainLabel = UILabel(frame: CGRect(x: 40, y:15, width: 250, height:30))
        mainLabel.text = "Huli Pizza Co"
        mainLabel.font = UIFont(name: "SFUIText-Bold", size: 50.0)
        
          mainLabel.font = UIFont.boldSystemFont(ofSize: 22)
        mainLabel.textColor = UIColor.white
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(mainLabel)
        
        let dessertLbl = UILabel(frame: CGRect(x: 40, y:55, width: 200, height: 30))
        dessertLbl.text = "Desserts"
        dessertLbl.font = UIFont(name: "SFUIText-Bold", size: 50.0)
        dessertLbl.textColor = UIColor.white
          dessertLbl.font = UIFont.boldSystemFont(ofSize: 19)
        //mainLabel.textColor = UIColor.black
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(dessertLbl)
        
        
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
    
    
    func orderSelected(sender: UIButton!) {
        
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Order";
        alertView.message = "Dessert Order Added in order List";
        alertView.show();
    }

    
    func backToMain(sender: UIButton!) {
        
        
        
        
        let nextViewController = storyboard?.instantiateViewController(withIdentifier: "main") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
            }
    
    
    
}
