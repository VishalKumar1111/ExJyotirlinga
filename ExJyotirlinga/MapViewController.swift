//
//  MapViewController.swift
//  ExJyotirlinga
//
//  Created by RLogixxTraining on 11/10/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let arrName = [["name" : "Somnath", "latitude" : 20.8880, "longitude" : 70.4010, "desc" : "Somanatha Temple Somanath Mandir Somnath temple in Gujarat Religion Affiliation Hinduism District Gir Somnath Deity Shiva Governing body Shree Somnath Trust Location Location Veraval(Somnath) State Gujarat Country India Somnath temple is located in GujaratSomnath temple Shown within Gujarat Show map of Gujarat Show map of India Show all Geographic coordinates 20°53′16.9″N 70°24′5.0″E Architecture Creator"],
                   ["name" : "Nageshwar", "latitude" : 22.3360, "longitude" : 69.0870,"desc" : "Nageshwar was believed to be known as ‘Darukavana’, which is an ancient epic name of a forest in India. Below are well-known legends attached to this mystical temple.According to the legend, ‘Balakhilyas’, a group of dwarf sages worshipped Lord Shiva in Darukavana for long a time. To test their devotion and patience, Shiva came to them as a nude ascetic wearing only nagas (serpants) on his body. Wives of sages got attracted to the saint and went after him, leaving their husbands behind. Sages got very disturbed and outraged by this.They lost their patience and cursed the ascetic to loose his linga (one of the limited meanings is Phallus, but it has has a deeper theistic symbolism). Shiva linga fell on the earth and the whole world trembled. Lord Brahma and Lord Vishnu came to Lord Shiva, requesting him to save the earth from destruction and take back his linga. Shiva consoled them and took back his linga. (From Vamana Purana CH.6th & 45th). Lord Shiva promised his divine presence in Darukavana as ‘jyothirlinga’ for ever."],
                   ["name" : "Bhimashankar", "latitude" : 19.13781, "longitude" : 73.64379,"desc":"The Bhimashankar Mandir is a Shiva mandir situated in its eponymous village, Bhimashankar, in Pune district of Maharashtra. It is a key pilgrimage centre and one of the 12 Jyotirlinga in the world. The temple's Shiva lingam is one of the three Jyotirlinga of Maharashtra. The mandir is situated on a mountain."],
                   ["name" : "Trimbakeshwar", "latitude" : 19.9323, "longitude" : 73.5308,"desc":"Trimbakeshwar town is an ancient Hindu Pilgrim centre located at the source of the Godavari River, the longest river in peninsular India. Trimbakeshwar is abode of one of the twelve Jyotirlingas. The extraordinary feature of the Jyotirlinga located here is the Linga in the temple is in the form of a three faced embodying Tridev, Lord Bramha, Lord Vishnu and Lord Shiva. "],
                   ["name" : "Grishneshwar", "latitude" : 20.0249, "longitude" : 75.1699,"desc":"Grushneshwar Jyotirlinga Mandir or Grushneshwar is a Jyotirlinga mandir of God Shiv Shankar in Verul village of Sambajinagar district, Maharashtra. It is one of the 12 Jyotirlinga mandir in the world."],
                   ["name" : "Vaidyanath", "latitude" : 18.8453, "longitude" : 76.5198,"desc":"The Baidyanatha temple, also called Baba Baidyanath Dham is a Hindu Temple dedicated to Lord Shiva. It is located in Deoghar, in the Santhal Parganas division of the state of Jharkhand, India. It is one of the twelve Jyotirlingas, and considered to be the most revered places where Shiva lives."],
                   ["name" : "Mahakaleshwar", "latitude" : 23.1829, "longitude" : 75.7683,"desc":" the Shiva Purana, Brahma and Vishnu once had an argument over who was supreme in the creation.[1] To test them, Shiva pierced the three worlds as an endless pillar of light, the jyotirlinga. Vishnu and Brahma decide to travel along the pillar downwards and upwards respectively, to find the end of the light. Brahma lied that he had found the end, while Vishnu conceded his defeat. Shiva appeared as a second pillar of light and cursed Brahma that he would have no place in ceremonies while Vishnu would be worshipped till the end of eternity. "],
                   ["name" : "Omkareshwar", "latitude" : 22.2445, "longitude" : 76.1523,"desc":"According to the Shiv Mahapuran, once Brahma (the Hindu God of creation) and Vishnu (the Hindu God of Protection and Care) had an argument in terms of supremacy of creation.[2] To test them, Shiva pierced the three worlds as a huge endless pillar of light, the jyotirlinga. Vishnu and Brahma split their ways to downwards and upwards respectively to find the end of the light in either directions. Brahma lied that he found out the end, while Vishnu conceded his defeat. Shiva appeared as the second pillar of light and cursed Brahma that he would have no place in ceremonies while Vishnu would be worshipped until the end of eternity."],
                   ["name" : "Kashi Vishwanath", "latitude" : 25.3109, "longitude" : 83.0107,"desc":"The Kashi Vishwanath Temple is a famous Hindu temple dedicated to Shiva. It is located in Vishwanath Gali, near Varanasi, Uttar Pradesh, India. The temple is one of the most sacred Hindu pilgrimage sites and is among the twelve Jyotirlinga, shrines which are said to be the most sacred abodes of Shiva. Standing on the western banks of the Ganges, the presiding deity is known by the names Shri Vishwanath and Vishweshwara (IAST: Vishveshvara or Vishveshvur), literally meaning Lord of the Universe."],
                   ["name" : "Kedarnath", "latitude" : 30.7346, "longitude" : 79.0669,"desc":"Kedarnath Temple (Sanskrit: केदारनाथ मंदिर, IAST: Kēdāranātha Mandira, lit. 'temple of the God of the field') is a Hindu temple, one of the twelve jyotirlinga of Shiva. The temple is located on the Garhwal Himalayan range[citation needed] near the Mandakini river, in the state of Uttarakhand, India. Due to extreme weather conditions, the temple is open to the general public only between the months of April (Akshaya Tritiya) and November (Kartik Purnima, the autumn full moon). During the winters, the vigraha (deity) of the temple is carried down to Ukhimath to be worshipped for the next six months. Kedarnath is seen as a homogenous form of Shiva, the 'Lord of Kedarkhand', the historical name of the region"],
                   ["name" : "Rameshwaram", "latitude" : 9.2876, "longitude" : 79.3129,"desc":"According to Hindu epic Ramayana,[specify] Rama, the seventh avatar of the god Vishnu, prayed to Shiva here to absolve any sins that he might have committed during his war against the demon-king Ravana in Sri Lanka.[citation needed] According to the Puranas[which?] (Hindu scriptures), upon the advice of sages, Rama along with his wife Sita and his brother Lakshmana, installed and worshipped the lingam[citation needed](an iconic symbol of Shiva) here to expiate the sin of Brahmahatya incurred while killing Ravana (who was a Brahmin and son of Vishrava)."],
                   ["name" : "Mallikarjuna", "latitude" : 16.0733, "longitude" : 78.8687,"desc" :"When Shiva and Parvati decided to find suitable brides for their sons. Shiva got Buddhi (intellect), Siddhi (spiritual power), and Riddhi (prosperity) married to Ganesha. Kartikeya on his return was enraged and went away to stay alone on Mount Krauncha in Palani in the name of Kumara brahmachari. On seeing his father coming over to pacify him, he tried to move to another place, but on the request of the Devas, stayed close by. The place where Shiva and Parvati stayed came to be known as Srisailam."]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createAnnotation(locations: arrName)
       // mapView
        
    }
    func createAnnotation(locations : [[String:Any]]){
        for location in locations{
            let annotation = MKPointAnnotation()
            annotation.title = location["name"] as? String
            //annotation.description = location["desc"] as! String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees , longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(annotation)
            
            print( annotation.title ?? "")
        }
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        //guard let detail = view.annotation?.description else{return}
        guard let annotationTitle = view.annotation?.title else { return }
        let destVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        destVC.placeNameText = annotationTitle!
        //destVC.placeNameText = detail
        navigationController?.pushViewController(destVC, animated: true)
    }
    
    

  

}
