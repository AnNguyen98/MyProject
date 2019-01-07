//Type Casting in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Song:MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
let mediaLists: [MediaItem] = [
    Movie(name: "Star Wars", director: "George Lucas"),
    Movie(name: "Interstellar", director: "Christopher Nolan."),
    Movie(name: "The Matrix", director: " Lana Wachowski"),
    Song(name: "A Hard Day's Night", artist: "The Beatles"),
    Song(name: "All Of Me", artist: "John Legend"),
]
var numberOfMovies = 0
var numberOfSongs = 0
for eachMedia in mediaLists {
    if eachMedia is Song {
        numberOfSongs += 1
    } else if eachMedia is Movie {
        numberOfMovies += 1
    }
}
print("numberOfMovies = \(numberOfMovies)")
print("numberOfSongs = \(numberOfSongs)")
for eachMedia in mediaLists {
    if let movie = eachMedia as? Movie {
        //Downcasting
        print("Movie: \(movie.name), director: \(movie.director)")
    } else if let song = eachMedia as? Song {
        print("Song: \(song.name), artist:  \(song.artist)")
    }
}
//Type Casting for Any and AnyObject
var things = [Any]()// An array of any object
things.append(100)
things.append(200.0)
things.append(M_PI) //mathematic PI
things.append("Star Wars")
things.append((1.0, 3.0)) //a tuple
things.append(Song(name: "Love story", artist: "Taylor Swift")) //an object
things.append({ (name: String) -> String in "Hello, \(name)" }) //a closure
for thing in things {
    switch thing {
    case let anInteger as Int:
        print("An int value: \(anInteger)")
    case let aDouble as Double where aDouble > 0:
        print("A double, value: \(aDouble), positive!")
    case let aString as String:
        print("This is a string. Value: \(aString)")
    case let (x, y) as (Double, Double):
        print("This is a tuple with x = \(x), y = \(y)")
    case let aSong as Song:
        print("A song with name: \(aSong.name), artist: \(aSong.artist)")
    case let stringInClosure as (String) -> String:
        print("stringInClosure = \(stringInClosure("Hoang"))")
    default:
        print("somethin else")
    }
}


