import UIKit

// URL

let urlString = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=higedan"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme
url?.host
url?.path
url?.query
url?.baseURL


let baseURL = URL(string: "https://search.naver.com")
let relativeURL = URL(string: "search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=higedan", relativeTo: baseURL)

relativeURL?.absoluteString
relativeURL?.scheme
relativeURL?.host
relativeURL?.path
relativeURL?.query
relativeURL?.baseURL


// URLComponents - 띄어쓰기, 영어를 제외한 언어가 query에 포함될 때

var urlComponents = URLComponents(string: "https://search.naver.com/search.naver?")
let whereQuery = URLQueryItem(name: "where", value: "nexearch")
let smQuery = URLQueryItem(name: "sm", value: "top_hty")
let fbmQuery = URLQueryItem(name: "fbm", value: "0")
let ieQuery = URLQueryItem(name: "ie", value: "utf8")
let queryQuery = URLQueryItem(name: "query", value: "히게단")

urlComponents?.queryItems?.append(whereQuery)
urlComponents?.queryItems?.append(smQuery)
urlComponents?.queryItems?.append(fbmQuery)
urlComponents?.queryItems?.append(ieQuery)
urlComponents?.queryItems?.append(queryQuery)

urlComponents?.url
urlComponents?.string
urlComponents?.queryItems?.last?.value




