//
//  SnippetView.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

struct SnippetView: View {
    var body: some View {
        Text("Hello, Snippets!")
        
    }
    
    private func addSnippet(){
        return;
    }
    
    private func deleteSnippet(id: Int) {
        return;
    }
    
    private func addFolder(){
        return;
    }
    
    private func deleteFolder(id: Int){
        return;
    }
}

#Preview {
    SnippetView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
