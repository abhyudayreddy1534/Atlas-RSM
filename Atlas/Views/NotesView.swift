//
//  NotesView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct NotesView: View {
    let notes: [NoteModel]
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Notes")
                    .font(.system(size: 12))
                Spacer()
                Button(action: {}, label: {
                        Image(systemName: "plus")
                        Text("Add")
                })
                .foregroundStyle(Color.secondary)
                .padding(.horizontal, 8)
                .padding(.vertical, 3)
                .modifier(RoundedBorderModifier(cornerRadius: 6))
            }
            ForEach(notes, id: \.id) { note in
                Text("• \(note.name)")
                    .font(.system(size: 12))
                    .padding(.horizontal, 5)
                    .foregroundStyle(Color.secondary)
            }
        }
        .padding()
        .modifier(RoundedBorderModifier(cornerRadius: 10))
    }
}

//#Preview {
//    NotesView(notes: Constants.dummyDealer!.notes)
//}
