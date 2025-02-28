//
//  AboutView.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Text("About page")
    }
}

#Preview {
    AboutView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
