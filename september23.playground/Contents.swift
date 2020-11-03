import UIKit
import XCTest

//class ViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//
//    var data = ["a", "b", "c", "d"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        // Do any additional setup after loading the view.
//        tableView.dataSource = self
//        tableView.delegate = self
//    }
//
//      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
//        cell.textLabel?.text = data[indexPath.row]
//        return cell
//    }
//
//      // MARK: - View Delegate
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print ("Selected: ", indexPath.row)
//    }
//
//}
//
//extension ViewController: UITableViewDataSource {
//
//    // MARK: - View DataSource
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//}
//
//extension ViewController: UITableViewDelegate {
//
//    ...
//
//}

//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    @IBOutlet weak var tableView: UITableView!
//
//    var data = ["a", "b", "c", "d"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        // Do any additional setup after loading the view.
//        tableView.dataSource = self
//        tableView.delegate = self
//    }
//
//    // MARK: - View DataSource
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//       let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
//       cell.textLabel?.text = data[indexPath.row]
//       return cell
//    }
//
//    // MARK: - View Delegate
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print ("Selected: ", indexPath.row)
//    }
//
//}

class PlayData {
    var allWords = [String]()
}

func testAllWordsLoaded() {
    let playData = PlayData()
    XCTAssertEqual(playData.allWords.count, 0, "allWords must be 0")
}


//protocol Serializer {
//
//    func serialize(data: AnyObject) -> String?
//}
//
//class RequestSerializer: Serializer {
//
//    func serialize(data: AnyObject) -> String? {
//        return ""
//    }
//
//}
//
//class DataManager {
//
//    var serializer: Serializer? = RequestSerializer()
//
//}
//protocol Edible {
//    func eat()
//}
//
//class Person {
//    var name:String = ""
//
//    func provideSnack(withItem item: Edible) {
//        item.eat()
//    }
//}
//
//class CandyBar: Edible {
//    func eat() {
//        print("Yumm yumm yummy")
//    }
//
//    // Your code goes here
//}



//class FrameSizeTests: XCTestCase {
//    func testInitialFrameSize() {
//        let view = CustomView()
//        let expectedSize = CGSize(width: 640.0, height: 480.0)
//        XCTAssertEqual(view.frame.size, expectedSize, "Unexpected frame size.")
//    }
//}













































/*
Let’s define features of a good architecture:
Balanced distribution of responsibilities among entities with strict roles.
Testability usually comes from the first feature (and don’t worry: it is easy with appropriate architecture).
Ease of use and a low maintenance cost.
 
 Why Distribution?
 Distribution keeps a fair load on our brain while we trying to figure out how things work.
 Why Testability?
 This means the tests saved those developers from finding issues in runtime
 Why ease of use?
 Therefore the less code you have, the less bugs you have.
 
 Design Patterns
 MVC
 MVP
 MVVM
 VIPER
 
 Having entities divided allows us to:
 understand them better (as we already know)
 reuse them (mostly applicable to the View and the Model)
 test them independently
 
 Aim of an Architecture
 An architecture should usually:
    Fix the Massive-View-Controller issue
    Increase testability
    Improve maintainability
    Scale with team size
*/


