//
//  PizzaViewController.swift
//  HuliPizza
//
//  Created by Admin on 22/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit


var dic = ["pizza": "Chips123", "description": "small"]

class PizzaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    let orderDict = ["pizza": "Huli Chicken", "pizza1" : " Surfboard Pizza ",
//                     "spampizza": "Spam City Pizza", "chicagopizza" : "Sweet Home Chicago", "Veganpizza": "vegan deep pizza"]
//    
    
    
    var pizzaList = [Piza]()
    var pizzaOrderList = [PizzaOrder]()
    
    var order = PizzaOrder()
    
    
    
    var pi = " "
    
    @IBOutlet weak var pizzaTableView: UITableView!
    
    
    override func viewDidLoad() {
        
        
        
        
        super.viewDidLoad()
        setPizzaUI()
        
//        var pizzaorder = PizzaOrder(pizzaname: "Huli chips ", pizzadescription: "small")
//        pizzaOrderList += [pizza]
        
        
        var pizza = Piza(pizzaname: "Huli Chicken ", pizzadescription: "Our street take on the BBQ")
        
        pizzaList += [pizza]
        
        pizza = Piza(pizzaname: "SurfBoard ", pizzadescription: "local seafood on longboard crust")
        
        pizzaList += [pizza]
        
        pizza = Piza(pizzaname: "Spam City ", pizzadescription: "Spam and tomato on long cheese")
        
        pizzaList += [pizza]
        
        pizza = Piza(pizzaname: "Sweet Home Chicago ", pizzadescription: "Sausage and pepporoni")
        
        pizzaList += [pizza]
        
        pizza = Piza(pizzaname: "Vegan Deep Diver ", pizzadescription: "Deep Dish Veegan Pizza")
        
        pizzaList += [pizza]
        
        
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
        
        return pizzaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = pizzaTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PizzaTVC
        
        let p = pizzaList[indexPath.row] as! Piza
        
        
        
        
        cell.lblPizaName.text = p.pizzaName
        
        cell.lblPizzaDesc.text = p.pizzaDescription
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let s = pizzaList[indexPath.row] as Piza
        
       
        
        orderArray.append(s.pizzaName)
        orderDesc.append(s.pizzaDescription)
        
        
        var order = PizzaOrder(pizzaname: s.pizzaName, pizzadescription: s.pizzaDescription)
        pizzaOrderList += [order]
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Order";
        alertView.message = "Order is Selected";
        alertView.show();
        
        
        
        print("DICTIONARY IS ", dic)
        
    }
    
    func setPizzaUI() {
        
        view.backgroundColor = UIColor.darkGray
        
//        view.backgroundColor = UIColor.init(colorLiteralRed: 240/255, green: 246/255, blue: 245/255, alpha: 2)
        
        let mainLabel = UILabel(frame: CGRect(x: 40, y:15, width: 250, height:30))
        mainLabel.text = "Huli Pizza Co"
        mainLabel.font = UIFont(name: "SFUIText-Bold", size: 50.0)
         mainLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        mainLabel.textColor = UIColor.white
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(mainLabel)
        
        let pizzaLabel = UILabel(frame: CGRect(x: 40, y:55, width: 200, height: 30))
        pizzaLabel.text = "Pizzas"
        pizzaLabel.font = UIFont(name: "SFUIText-Bold", size: 50.0)
        pizzaLabel.font = UIFont.boldSystemFont(ofSize: 19)
        pizzaLabel.textColor = UIColor.white
        view.addSubview(pizzaLabel)
       
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
        alertView.message = "Pizza Order added in Order Lists";
        alertView.show();
    }
    
    func backToMain(sender: UIButton!) {
        
        
        
        //                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //        
        let nextViewController = storyboard?.instantiateViewController(withIdentifier: "main") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
       
    }
    
    
        
}
