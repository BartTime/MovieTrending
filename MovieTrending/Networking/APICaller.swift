import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class APICaller {
    static func getTrendingMovies(
        completionHandler: @escaping(_ result: Result<TrendingMoviesModel, NetworkError>) -> Void
    ) {
        let urlString = NetworkConstants.shared.serverAddress + "trending/movie/week?api_key=" + NetworkConstants.shared.apiKey
        
        guard let url = URL(string: urlString) else { completionHandler(.failure(.urlError)); return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error == nil,
               let data = data,
               let resultData = try? JSONDecoder().decode(TrendingMoviesModel.self, from: data) {
                completionHandler(.success(resultData))
            } else {
                completionHandler(.failure(.canNotParseData))
            }
            
        }.resume()
    }
}
