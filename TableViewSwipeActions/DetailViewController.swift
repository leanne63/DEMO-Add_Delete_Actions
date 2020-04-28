//
//  DetailViewController.swift
//  TableViewSwipeActions
//
//  Created by leanne on 4/28/20.
//

import UIKit

class DetailViewController: UIViewController {
	
	var itemToEdit: (title: String, subtitle: String)?

	@IBOutlet weak var titleTextField: UITextField!
	@IBOutlet weak var subtitleTextField: UITextField!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		if let itemToEdit = itemToEdit {
			titleTextField.text = itemToEdit.title
			subtitleTextField.text = itemToEdit.subtitle
		}
    }

}
