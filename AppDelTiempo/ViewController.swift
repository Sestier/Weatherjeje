//
//  ViewController.swift
//  AppDelTiempo
//
//  Created by Maestro on 24/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblHoraTop: UILabel!
    @IBOutlet weak var lblCiudad: UILabel!
    @IBOutlet weak var imgCentral: UIImageView!
    @IBOutlet weak var lblGradosCentral: UILabel!
    @IBOutlet weak var lblSensacionReal: UILabel!
    @IBOutlet weak var vwIzquierda: UIView!
    @IBOutlet weak var vwCentro: UIView!
    @IBOutlet weak var vwDerecha: UIView!
    @IBOutlet weak var lblActualizacion: UILabel!
    @IBOutlet weak var lblInc: UILabel!
    @IBOutlet weak var lblMensajeSubliminal: UILabel!
    
    //Actions
    @IBAction func doTapvwIzq(_ sender: Any) {
        lblGradosCentral.text = "25º"
        lblHoraTop.text = "17:00 p.m"
        lblSensacionReal.text = "Sensación real: 24º Soleado"
        lblActualizacion.text = "Actualizado hace 1 segundo"
        imgCentral.image = UIImage(named: "weather 2")
        lblFecha.alpha = 0
        lblHoraTop.alpha = 0
        lblCiudad.alpha = 0
        lblGradosCentral.alpha = 0
        imgCentral.alpha = 0
        lblSensacionReal.alpha = 0
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.lblFecha.alpha = 1
            self.lblHoraTop.alpha = 1
            self.lblCiudad.alpha = 1
            self.lblGradosCentral.alpha = 1
            self.imgCentral.alpha = 1
            self.lblSensacionReal.alpha = 1
        }, completion: nil)
    }
    
    @IBAction func doTapvwCentro(_ sender: Any) {
        lblGradosCentral.text = "22º"
        lblHoraTop.text = "18:00 p.m"
        lblSensacionReal.text = "Sensación real: 23º Despejado"
        lblActualizacion.text = "Actualizado hace 1 segundo"
        imgCentral.image = UIImage(named: "weather 2")
        lblFecha.alpha = 0
        lblHoraTop.alpha = 0
        lblCiudad.alpha = 0
        lblGradosCentral.alpha = 0
        imgCentral.alpha = 0
        lblSensacionReal.alpha = 0
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.lblFecha.alpha = 1
            self.lblHoraTop.alpha = 1
            self.lblCiudad.alpha = 1
            self.lblGradosCentral.alpha = 1
            self.imgCentral.alpha = 1
            self.lblSensacionReal.alpha = 1
        }, completion: nil)
    }
    
    @IBAction func doTapvwDerecha(_ sender: Any) {
        lblGradosCentral.text = "19º"
        lblHoraTop.text = "19:00 p.m"
        lblSensacionReal.text = "Sensación real: 17º Nublado"
        lblActualizacion.text = "Actualizado hace 1 segundo"
        imgCentral.image = UIImage(named: "weather 3")
        lblFecha.alpha = 0
        lblHoraTop.alpha = 0
        lblCiudad.alpha = 0
        lblGradosCentral.alpha = 0
        imgCentral.alpha = 0
        lblSensacionReal.alpha = 0
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.lblFecha.alpha = 1
            self.lblHoraTop.alpha = 1
            self.lblCiudad.alpha = 1
            self.lblGradosCentral.alpha = 1
            self.imgCentral.alpha = 1
            self.lblSensacionReal.alpha = 1
        }, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //primero
        imgCentral.center.y -= self.view.bounds.height
        lblCiudad.center.x -= self.view.bounds.width
        lblFecha.center.x -= self.view.bounds.width
        lblHoraTop.center.x -= self.view.bounds.width
        lblGradosCentral.center.y += self.view.bounds.height
        lblSensacionReal.center.y += self.view.bounds.height
        
        //segundo
        vwCentro.center.y += self.view.bounds.height
        lblActualizacion.center.y += self.view.bounds.height
        vwIzquierda.center.x += self.view.bounds.width
        vwDerecha.center.x += self.view.bounds.width
        
        //tercero
        lblInc.alpha = 0
        lblMensajeSubliminal.alpha = 1
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //primero
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.imgCentral.center.y += self.view.bounds.height
            self.lblCiudad.center.x += self.view.bounds.width
            self.lblFecha.center.x += self.view.bounds.width
            self.lblHoraTop.center.x += self.view.bounds.width
            self.lblGradosCentral.center.y -= self.view.bounds.height
            self.lblSensacionReal.center.y -= self.view.bounds.height
        }, completion: nil)
        
        //segundo
        UIView.animate(withDuration: 1, delay: 1.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.vwCentro.center.y -= self.view.bounds.height
            self.lblActualizacion.center.y -= self.view.bounds.height
            self.vwIzquierda.center.x -= self.view.bounds.width
            self.vwDerecha.center.x -= self.view.bounds.width
        }, completion: nil)
        
        //tercero
        UIView.animate(withDuration: 1, delay: 1.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.lblInc.alpha = 1
            self.lblMensajeSubliminal.alpha = 1
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

