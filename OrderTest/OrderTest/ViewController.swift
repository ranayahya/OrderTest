//
//  ViewController.swift
//  HuliPizza
//
//  Created by Admin on 22/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

var orderArray = ["Huli Chips"]
var orderDesc = ["small"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // var pizzaController = PizzaViewController()
    var pizzaController: PizzaViewController = PizzaViewController()
    
    
    static let count = 1
    
    var objPizza: Piza = Piza()
    
  
    
    @IBOutlet weak var orderTableView: UITableView!
    
    
//    let orderDecitionary = ["chips": "Huli Chips", "small": "Small"]
//    
//    
//    let orderDict = ["hulipizza": "Huli Chicken", "surfboardpizza" : " Surfboard Pizza ",
//                     "spampizza": "Spam City Pizza", "chicagopizza" : "Sweet Home Chicago", "Veganpizza": "vegan deep pizza"]
    
//    public let orderCurrent = ["chips": "Huli Chips", "small": "Small", "pizza1": "Huli Chicken", "pizza2" : " Surfboard Pizza ",
//                               "spampizza": "Spam City Pizza", "chicagopizza" : "Sweet Home Chicago", "Veganpizza": "vegan deep pizza"]
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
               // PizzaOrder(pizzaname: "Huli chips ", pizzadescription: "small")
        
        orderTableView.reloadData()
       // print("Count of ORDER DICK", orderDict.count)
        print("PIZZA ARRAY COUNT", orderArray.count)
        setUI()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setUI() {
        
    view.backgroundColor = UIColor.darkGray
        let pizzaLabel = UILabel(frame: CGRect(x: 40, y:15, width: 300, height: 40))
        pizzaLabel.text = " Huli Pizza Co. "
       // pizzaLabel.font = UIFont(name: "SFUIText-Bold", size: 50.0)
        
        //pizzaLabel.font = pizzaLabel.font.withSize(40)
        
        //label.font = UIFont(name: "Avenir-Light", size: 15.0)
        pizzaLabel.font = UIFont.boldSystemFont(ofSize: 22)
        //label.font = UIFont.italicSystemFontOfSize(15)
        //label.font = UIFont.systemFontOfSize(17)
        
        pizzaLabel.textColor = UIColor.white
        //pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        view.addSubview(pizzaLabel)
        
        
        let currentOrderLabel = UILabel(frame: CGRect(x: 40, y:60, width: 800, height: 30))
        currentOrderLabel.text = " Current Order "
       // currentOrderLabel.font = UIFont(name: "SFUIText-Bold", size: 30.0)
         currentOrderLabel.font = UIFont.boldSystemFont(ofSize: 19)
        
        currentOrderLabel.textColor = UIColor.white
        // pizzaLabel.textColor = UIColor(Green: 230/255, Red: 230/255, black: 230/255, blue: 230/255)
        // view.addSubview(pizzaLabel)
        view.addSubview(currentOrderLabel)
        
        
        let pizzaButton = UIButton(frame: CGRect(x: 130, y: 500, width: 150, height: 30))
        pizzaButton.backgroundColor = UIColor.gray
        pizzaButton.setTitle(" PIZZA ", for: .normal)
        pizzaButton.addTarget(self, action:#selector(self.pressed(sender:)), for: .touchUpInside)
        //pizzaButton.setImage(#imageLiteral(resourceName: "button1.png"), for: .normal)
        pizzaButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)
        view.addSubview(pizzaButton)
        
        let beveragesButton = UIButton(frame: CGRect(x: 130, y: 540, width: 150, height: 30))
        beveragesButton.backgroundColor = UIColor.gray
        beveragesButton.setTitle(" BEVERAGES ", for: .normal)
        beveragesButton.addTarget(self, action:#selector(self.moveToBewarages(sender:)), for: .touchUpInside)
        beveragesButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)

        view.addSubview(beveragesButton)
        
        
        let dessertsButton = UIButton(frame: CGRect(x: 130, y: 580, width: 150, height: 30))
        dessertsButton.backgroundColor = UIColor.gray
        dessertsButton.setTitle(" DESSERTS ", for: .normal)
        dessertsButton.addTarget(self, action: #selector(self.moveToDessert(sender:)), for: .touchUpInside)
        dessertsButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)

        view.addSubview(dessertsButton)
        
        
        
        let submitButton = UIButton(frame: CGRect(x: 110, y: 620, width: 200, height: 30))
        submitButton.backgroundColor = UIColor.gray
        submitButton.setTitle(" SUBMIT ORDER ", for: .normal)
        submitButton.addTarget(self, action: #selector(self.orderSubmit(sender:)), for: .touchUpInside)
        submitButton.setBackgroundImage(#imageLiteral(resourceName: "button1.png"), for: .normal)

        view.addSubview(submitButton)
        
        
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return orderArray.count
        print("Array Count", orderArray.count)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = orderTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrderTVC
        
        // for i in 0..<pizzaArray.count {
        cell.huliChips.text = orderArray[indexPath.row]
        cell.lblSmall.text = orderDesc[indexPath.row]
        
        
        print("Pizza Name", orderArray[indexPath.row] )
        print("pizza Description", orderDesc[indexPath.row])
        //}
        return cell
        
        
    }
    
    
    func moveToBewarages(sender: UIButton) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "bewarageView") as! BewaragesViewController
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
    
    func moveToDessert(sender: UIButton) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "dessertView") as! DessertsViewController
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
    
    func orderSubmit(sender: UIButton)
    {
        
        
        var firstElement = orderArray.first!
        orderArray.removeAll()
        orderArray.append(firstElement)
        
        
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Order";
        alertView.message = "Order has been submitted Successfully";
        alertView.show();
        
        orderTableView.reloadData()
        
    }
    func pressed(sender: UIButton!) {
        
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "pizzaView") as! PizzaViewController
        self.present(nextViewController, animated:true, completion:nil)
        //
            }
    
}

