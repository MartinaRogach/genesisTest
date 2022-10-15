//
//  CryptoListViewModel.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation
import Combine

class CryptoListViewModel: ObservableObject {
    
    // MARK: - Public properties
    @Published var cryptos: CryptoList = CryptoList(top50CryptocurrencyDetails: [])
    
    // MARK: - Private properties
    private var cancellableSet = Set<AnyCancellable>()
    
    // MARK: - Init
    init() {
        getCryptos()
    }
    
    // MARK: - Public methods
    func getCryptos() {
        let headers = ["X-RapidAPI-Key": "60106239bbmsh3070aab1779a194p10e3f3jsn0ff084fae7ca",
                       "X-RapidAPI-Host": "crypto-update-live.p.rapidapi.com"]
        NetworkManager.checkFromBack(
            url: URL(string: "https://crypto-update-live.p.rapidapi.com/top-currency/top_50_details")!,
            method: "GET",
            headers: headers,
            params: [:])
        .replaceError(with: CryptoList(top50CryptocurrencyDetails: []))
        .receive(on: RunLoop.main)
        .assign(to: \.cryptos, on: self)
        .store(in: &cancellableSet)
    }
}
