//
//  MangaDetialView.swift
//  Koi
//
//  Created by Edgar Mejía on 21/6/21.
//

import SwiftUI

struct MangaDetialView: View {
    
    var manga: Manga
    
    var body: some View {
        #if os(iOS)
        content
            .edgesIgnoringSafeArea(.all)
        #else
        content
        #endif
    }
    
    var content: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                ZStack(alignment: .bottom) {
                    DescriptionGradient()
                    HStack {
                        Image(manga.coverUrl)
                            .resizable()
                            .frame(width: 105, height: 150, alignment: .leading)
                            .scaledToFill()
                        MangaDescription(title: manga.title, description: manga.description, author: manga.author)
                    }
                    .padding()
                }
            }
            .foregroundColor(.white)
            .background(
                Image(manga.coverUrl)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300, alignment: .topLeading)
                    .blur(radius: 8)
                    .clipped()
            )
            .frame(height: 300, alignment: .topLeading)
            
            VStack {
                ForEach(0 ..< 10) { item in
                    ChapterListItem(
                        chapter: Chapter(id: 1, title: "72 - Eclipse", fanSub: "PlotTwist No Fansub", date: "12/11/94", url: "google.com", download: false)
                    )
                    Divider()
                }
            }
            .padding()
        }
    }
}

struct MangaDetialView_Previews: PreviewProvider {
    static var previews: some View {
        MangaDetialView(manga: Manga(id: 2, title: "Berserk", description: "Berserk es un manga creado por Kentaro Miura y posteriormente adaptado en anime, con un estilo épico fantástico y de fantasía oscura. Miura publicó un prototipo de Berserk en 1988.", author: "Kentaro Miura", url: "#", coverUrl: "03"))
    }
}
