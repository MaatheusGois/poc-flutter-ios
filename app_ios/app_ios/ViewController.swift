//
//  ViewController.swift
//  app_ios
//
//  Created by Ariani Martins on 29/03/22.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    @IBOutlet weak var flutterBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        flutterBtn.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        self.view.addSubview(flutterBtn)
    }

    @IBAction func showFlutter() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
//        flutterViewController.modalPresentationStyle = .fullScreen
        navigationController?.present(flutterViewController, animated: true)
    }
}
