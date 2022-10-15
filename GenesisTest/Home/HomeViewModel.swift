//
//  HomeViewModel.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    // MARK: - Public properties
    @Published var showAllHidden = false
    @Published var shownNews: [News] = []
    @Published var news: [News] = [] {
        didSet {
            self.shownNews = showAllHidden ? news : Array(news.prefix(2))
        }
    }
    var timer = Timer.publish(every: 15, on: .main, in: .common).autoconnect()
    
    // MARK: - Private properties
    private var cancellableSet = Set<AnyCancellable>()
    
    // MARK: - Init
    init() {
        getNews()
    }
    
    // MARK: - Public methods
    func showAllPressed() {
        showAllHidden = true
        self.shownNews = showAllHidden ? news : Array(news.prefix(2))
    }
    
    func getNews() {
        let headers = ["X-RapidAPI-Key": "60106239bbmsh3070aab1779a194p10e3f3jsn0ff084fae7ca",
                       "X-RapidAPI-Host": "ms-finance.p.rapidapi.com"]
        let params = ["performanceId": "0P0000OQN8"]
        NetworkManager.checkFromBack(
            url: URL(string: "https://ms-finance.p.rapidapi.com/news/list")!,
            method: "GET",
            headers: headers,
            params: params)
        .replaceError(with: [])
        .receive(on: RunLoop.main)
        .assign(to: \.news, on: self)
        .store(in: &cancellableSet)
    }
}
