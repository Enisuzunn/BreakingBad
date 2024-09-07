
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var kullaniciSecimi : BreakingBad?
    var kahramanlar = [BreakingBad]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let walter = BreakingBad(isim: "Walter White", konum: "Father and Heisenberg", gorsel: UIImage(named: "walter")!)
        let skyler = BreakingBad(isim: "Skyler White", konum: "Mother and Walter's wife", gorsel: UIImage(named: "skyler")!)
        let jrwalter = BreakingBad(isim: "Walter White Juniour", konum: "Walter's son", gorsel: UIImage(named: "jrwalter")!)
        let hank = BreakingBad(isim: "Hank Schrader", konum: "Police", gorsel: UIImage(named: "hank")!)
        let marie = BreakingBad(isim: "Marie Schrader", konum: "Hank's wife", gorsel: UIImage(named: "marie")!)
        let jesse = BreakingBad(isim: "Jesse Pinkman", konum: "Walter's Partner", gorsel: UIImage(named: "jesse")!)
        let saul = BreakingBad(isim: "Saul Goodman", konum: "Lawyer", gorsel: UIImage(named: "saulgoodman")!)
        let mike = BreakingBad(isim: "Mike Ehrmantraut", konum: "Retired police officer", gorsel: UIImage(named: "mike")!)
        let gustavo = BreakingBad(isim: "Gustavo Fring", konum: "Drug Lord", gorsel: UIImage(named: "gustavo")!)
        kahramanlar = [walter,skyler,jrwalter,hank,marie,jesse,saul,mike,gustavo]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahramanlar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = kahramanlar[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = kahramanlar[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKarakter = kullaniciSecimi
        }
    }
    


}

