//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Apple on 19/06/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var tbl: UITableView!
    @IBOutlet weak var btnimage: UIButton!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    var arr : [PersonDetail]?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tbl.delegate = self
        tbl.dataSource = self
        arr = CoreDBManager.sharedDatabase.fetchAllPersons()
        
    }

    @IBAction func btnImage_clk(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let userPickedImage = info[.editedImage] as? UIImage else { return }
        imgProfile.image = userPickedImage

        picker.dismiss(animated: true)
    }

    
    @IBAction func btnSave_clk(_ sender: Any) {
        
        
        
        
        
        if let name = txtName.text,let phone = txtPhone.text,let img = imgProfile.image?.pngData(){
            
            let objPerson : PersonDetail = PersonDetail(Pname: name, Pphone: phone, Pimg: img)
            
            _ = CoreDBManager.sharedDatabase.save(detail : objPerson)
        }
       
        arr = CoreDBManager.sharedDatabase.fetchAllPersons()
        tbl.reloadData()
        
        
        
        
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TblCell
        
        let person = arr![indexPath.row]
        cell.imageView?.image = UIImage(data: person.img)
        cell.lblName.text = person.name
        cell.lblPhone.text = person.phone
        return cell
    }
    
    
}
