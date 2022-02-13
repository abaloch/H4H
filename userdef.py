// store
UserDefaults.standard.set(1, forKey: "Key")  //Integer
UserDefaults.standard.set("TEST", forKey: "Key") //setObject

// retrieve
UserDefaults.standard.integer(forKey: "Key")
 UserDefaults.standard.string(forKey: "Key")

// remove
UserDefaults.standard.removeObject(forKey: "Key")

// remove all keys
if let appDomain = Bundle.main.bundleIdentifier {
UserDefaults.standard.removePersistentDomain(forName: appDomain)
 }



 // create the struct to save launch

struct DetectLaunch {
static let keyforLaunch = "validateFirstLaunch"
static let keyforLaunch2 = "validateFirstLaunch2"
static var isFirst: Bool {
    get {
        return UserDefaults.standard.bool(forKey: keyforLaunch)
        return UserDefaults.standard.bool(forKey: keyforLaunch2)
    }
    set {
        UserDefaults.standard.set(newValue, forKey: keyforLaunch)
        return UserDefaults.standard.bool(forKey: keyforLaunch2)
    }
}
}