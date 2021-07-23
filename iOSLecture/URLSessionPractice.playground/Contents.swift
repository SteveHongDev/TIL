import UIKit

// URL Session

// 1. URLSessionConfiguration
// 2. URLSession
// 3. URLSessionTask 를 이용해서 서버와 네트워킹

// URL SessionTask

// - dataTask
// - uploadTask
// - downloadTask


//1
let config = URLSessionConfiguration.default

//2
let session = URLSession(configuration: config)

//3

var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")!
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "higedan")
urlComponents.queryItems?.append(mediaQuery)
urlComponents.queryItems?.append(entityQuery)
urlComponents.queryItems?.append(termQuery)
let requestURL = urlComponents.url!


//struct Response: Codable {
//    let resultCount: Int
//    let tracks: [Track]
//
//    enum CodingKeys: String, CodingKey {
//        case resultCount
//        case tracks = "results"
//    }
//}
struct Response: Codable {
    let resultCount: Int
    let results: [Track]
    
}

struct Track: Codable {
    let title: String
    let artist: String
    let thumbnailPath: String
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artist = "artistName"
        case thumbnailPath = "artworkUrl30"
    }
}












let dataTask = session.dataTask(with: requestURL) { data, response, error in
    guard error == nil else { return }
    
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else { return }
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        // handle response error
        return
    }
    
    guard let resultData = data else { return }
    let resultString = String(data: resultData, encoding: .utf8)
    
    // 목표 : TrackList Object로 가져오기
    
    // List
    // - Data -> Track 목록으로 가져오고 싶다 [Track]
    // - Track 오브젝트를 만들어야겠다
    // - Data에서 struct로 Parsing하고 싶다 > Codable 활용
    //    - .json 파일, 데이터 -> 오브젝트 (Codable 활용)
    //    - Response, Track 만들기
    
    // To do
    // V Response, Track struct
    // V struct의 프로퍼티 이름과 실제 데이터의 키와 맞추기 (Codable Decoding 가능하도록)
    // - 파싱 (Decoding)
    // - TrackList 가져오기
    
    
    // Parsing
    do {
        let decoder = JSONDecoder()
        let response = try decoder.decode(Response.self, from: resultData)
        let tracks = response.results
        
        print("---> tracks: \(tracks.count)  -\(tracks.last?.title), \(tracks.last?.thumbnailPath)")
    } catch let error {
        print("---> error: \(error.localizedDescription)")
    }
    
    
    
//    print("--> result : \(resultString)")
}

dataTask.resume()









