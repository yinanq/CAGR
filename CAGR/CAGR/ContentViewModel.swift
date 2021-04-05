//
//  ContentViewModel.swift
//  cagr
//
//  Created by Yinan Qiu on 4/4/21.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var selectedOutput: Output = .cagr
}
