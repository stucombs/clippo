//
//  ClipboardItemsView.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

struct ClipItem: Hashable {
    var id: Int
    var value: String

    init(id: Int, value: String) {
        self.id = id
        self.value = value
    }
}

struct ClipboardItemsView: View {
    @State var nLimit: Int = 5;
    @State var items = [
        ClipItem(id: 0, value: "Hello"),
        ClipItem(id: 1, value: "Hi"),
        ClipItem(id: 2, value: "Hello"),
        ClipItem(id: 3, value: "Hello"),
        ClipItem(id: 4, value: "Hello"),
        ClipItem(id: 5, value: "Hello"),
        ClipItem(id: 6, value: "Hello"),
        ClipItem(id: 7, value: "Hello")
    ];

    var body: some View {
//        let groupedItems = groupItems(from: items, maxGroupSize: nLimit);
        Text("History")
        Menu("0-10") {
            ForEach(items, id: \.self.id) {
                item in
                Button("\(item.value)", action: { onItemSelect(item: item)
                })
            }
        }
//        if (!groupedItems.isEmpty) {
//            ForEach(groupedItems.enumerated(), id: \.self) {
//                item in
//                    Text("\(item.id) - \(item.value)")
//            }
//        }
    }
    
    func groupItems<T>(from items: [T], maxGroupSize: Int) -> [[T]] {
        return stride(from: 0, to: items.count, by: maxGroupSize).map { startIndex in
            let endIndex = min(startIndex + maxGroupSize, items.count)
            return Array(items[startIndex..<endIndex])
        }
    }
    
    func onItemSelect(item: ClipItem) {
        print("ITEM: \(item.value) - ID: \(item.id)");
        return;
    }
}

#Preview {
    ClipboardItemsView()
}
