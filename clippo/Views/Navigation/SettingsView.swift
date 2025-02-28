//
//  SettingsView.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

enum ClipItems: Int, Identifiable {
    case TEN        = 10;
    case TWENTY     = 20;
    case THIRTY     = 30;
    case FORTY      = 40;
    case FIFTY      = 50;

    var id: Self { self }
}

struct SettingsView: View {
    @State private var numItemsSelect: ClipItems = .TEN;
    @State private var numGroupItemSelect: ClipItems = .TEN;
    @State private var toggleIsOn: Bool = true;

    var body: some View {
        HStack (alignment: .top) {
            VStack {
                HStack {
                    Text("Number of items in Clipboard")
                        .frame(
                            width: 200,
                            alignment: .trailing
                        )
                    Picker(
                        "",
                        selection: $numItemsSelect
                    ){
                        Text("10").tag(ClipItems.TEN)
                        Text("20").tag(ClipItems.TWENTY)
                        Text("30").tag(ClipItems.THIRTY)
                        Text("40").tag(ClipItems.FORTY)
                        Text("50").tag(ClipItems.FIFTY)
                    }
                    .frame(
                        width: 75
                    )
                    .padding(
                        .horizontal
                    )
                }
                HStack {
                    Text("Group items by")
                        .frame(
                            width: 200,
                            alignment: .trailing
                        )
                    Picker(
                        "",
                        selection: $numGroupItemSelect
                    ){
                        Text("10").tag(ClipItems.TEN)
                        Text("20").tag(ClipItems.TWENTY)
                        Text("30").tag(ClipItems.THIRTY)
                        Text("40").tag(ClipItems.FORTY)
                        Text("50").tag(ClipItems.FIFTY)
                    }
                    .frame(
                        width: 75
                    )
                    .multilineTextAlignment(.leading)
                    .padding(
                        .horizontal
                    )
                }
                .padding(
                    .top
                )
                HStack {
                    Button("Clear History", action: clearHistory)
                        .frame(
                            width: 250
                        )
                }
                .padding(
                    .top
                )
            }
        }
        .frame(
            width: 300,
            height: 200
        )
        .padding()
    }
    
    private func clearHistory() {
        print("Cleared History");
        return;
    }
}

#Preview {
    SettingsView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
