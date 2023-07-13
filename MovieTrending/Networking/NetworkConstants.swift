import Foundation

class NetworkConstants {
    public static var shared: NetworkConstants = NetworkConstants()
    
    private init() {
    }
    
    public var apiKey: String {
        get {
            return "0517a9d0e261e03e34cf5f657a2cf96c"
        }
    }
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
