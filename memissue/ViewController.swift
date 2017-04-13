
import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: Any) {
        let files = [ "a", "b", "c" ]

        for fileName in files {
            let _ = load(fileName)
        }
    }

    func load(_ name: String) -> Any? {
        let documents = Bundle.main.bundlePath as NSString
        let filePath = documents.appendingPathComponent("\(name).plist")
        return NSKeyedUnarchiver.unarchiveObject(withFile: filePath)
    }

}

