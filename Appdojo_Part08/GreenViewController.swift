//
//  GreenViewController.swift
//  Appdojo_Part08
//
//  Created by Kosuke Nagao on 2021/02/21.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            slider.value = delegate.sliderValue
            label.text = String(delegate.sliderValue)
        }
    }

    @IBAction private func valueChanged(_ sender: UISlider) {
        label.text = String(slider.value)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.sliderValue = slider.value
        }
    }
}
