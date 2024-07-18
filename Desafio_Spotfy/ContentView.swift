import SwiftUI

struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa : String
}

var arrayMusicas = [
    Song(id:4, name: "Numb Encore", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/A1FEfIXmjfL._UF1000,1000_QL80_.jpg"),
    Song(id:5, name: "Lost", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id:6, name: "In The Time", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id:7, name: "Burn It Down", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id:8, name: "Breaking The Habit", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id:9, name: "What I've Done", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
    Song(id:10, name: "New Divid", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b2735d283816a23e9ac7511f1519"),
]

struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(){
                AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/D4D03AQG-R5ZcQKN_qA/profile-displayphoto-shrink_200_200/0/1688912115539?e=2147483647&v=beta&t=aXgEmbzABXMUt2BXNhn5-E74USylzrr6hUuqKyRO8EQ")) {
                    image in image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            placeholder: {
            }
            .frame(width:200)
                HStack(){
                    AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/D4D03AQG-R5ZcQKN_qA/profile-displayphoto-shrink_200_200/0/1688912115539?e=2147483647&v=beta&t=aXgEmbzABXMUt2BXNhn5-E74USylzrr6hUuqKyRO8EQ")) {
                        image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                placeholder: {
                }
                .frame(width: 30)
                    
                    VStack(alignment: .leading){
                        Text("RobertoFM")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                        Text("RobertoSong")
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
                VStack(alignment: .leading){
                    ForEach(arrayMusicas){ musica in
                        HStack{
                            AsyncImage(url: URL(string: musica.capa)) {
                                image in image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60)
                            }
                        placeholder: {
                        }
                            VStack(alignment: .leading){
                                Text(musica.name)
                                    .foregroundStyle(.white)
                                Text(musica.artist)
                                    .foregroundStyle(.white)
                            }
                            
                            Spacer()
                        }
                    }
                }
            }
            
            
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
