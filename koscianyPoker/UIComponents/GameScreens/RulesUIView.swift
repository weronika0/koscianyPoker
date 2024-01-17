//
//  RulesUIView.swift
//  koscianyPoker
//
//  Created by student on 17/01/2024.
//

import SwiftUI

struct RulesUIView: View {
    var body: some View {
        Text("Każdy gracz posiada 5 kości do gry. Kości te mają wartości 1-6. Na początku gry kości są rzucane i pokazywane obu graczom. W tym momencie widząc jakie kości ma rywal, można wykonać jedną z 2 akcji:")
            .padding()
            .font(.system(size: 24))
    }
}

#Preview {
    RulesUIView()
}
