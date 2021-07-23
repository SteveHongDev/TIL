import UIKit



// Queue - Main, Global, Custom

// - Main
DispatchQueue.main.async {
    // UI Update
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}

// - Global
DispatchQueue.global(qos: .userInteractive).async {
    // 진짜 중요하고 당장 해야하는 것
}

DispatchQueue.global(qos: .userInitiated).async {
    // 거의 바로 해줘야 할 것
}

DispatchQueue.global(qos: .default).async {
    // 굳이 쓸 필요 없다.
}
DispatchQueue.global() // 이것과 같기 때문에..

DispatchQueue.global(qos: .utility).async {
    // 시간이 좀 걸리는 일들, 사용자가 당장 기다리지 않는 것 ex: 네트워킹, 디스크에서 큰 파일을 불러올 때
}

DispatchQueue.global(qos: .background).async {
    // 사용자에게 당장 인식될 필요가 없는 일들 ex: 뉴스 데이터 미리 받기, 위치 업데이트, 영상 다운로드
}

// - Custom Queue : 만들 수 있다 정도만 알자 ( 잘 안쓰임 )
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
let serialQueue = DispatchQueue(label: "serial", qos: .background)

// 복합적인 상황 ( 중요 )
func downloadImageFromServer() -> UIImage {
    // Heavy Task
    return UIImage()
}

func updateUI(image: UIImage) {
    
}

DispatchQueue.global(qos: .background).async {
    let image = downloadImageFromServer()
    
    DispatchQueue.main.async {
        updateUI(image: image)
    }
    
}

// Sync, Async

// Async
//DispatchQueue.global(qos: .background).async {
//    for i in 0...5 {
//        print("😈 \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .userInteractive).async {
//    for i in 0...5 {
//        print("😭 \(i)")
//    }
//}

// Sync
DispatchQueue.global(qos: .background).sync {
    for i in 0...5 {
        print("😈 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("😭 \(i)")
    }
}
