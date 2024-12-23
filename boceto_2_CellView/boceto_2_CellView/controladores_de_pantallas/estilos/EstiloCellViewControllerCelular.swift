//
//  EstiloCellViewControllerCelular.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/11/24.
//
import UIKit

extension ControladorPantallaPrincipalDeColeccion: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var ancho = self.collectionView.frame.width
        var largo = self.collectionView.frame.height
                
        ancho = ancho / 3
        largo = ancho * 0.5
                
        return CGSize(width: ancho, height: largo)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, insetForSectionAt sction: Int) -> UIEdgeInsets {
        var margin = CGFloat(30)
        return UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 300
    }
            // Method 2
            /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
                
                return 5
            }
            // Method 3
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
                
                return 5
            }
            //Method 4
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                
                let collectionViewWidth = self.collectionView.frame.width
                let collectionViewHeight =  self.collectionView.frame.height
                
                let cellWidth = (collectionViewWidth) / 1.1
                let cellHeight = cellWidth * 0.5
                
                return CGSize(width: cellWidth , height: cellHeight)
                
            }
            
            override func viewWillLayoutSubviews() {
                print("REPRENDER ESTAS mmadas")
                
            }
            
            override func viewWillAppear(_ animated: Bool) {
                (self.navigationController as? mod_navegador_principal)?.activar_navigation_bar(actviar: false)

            }
        }
    }*/
}
