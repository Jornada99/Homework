import Foundation


enum cinemaError: Error {
    case insufficientFunds(moneyNeeded: Double)
    case noTickets
    case noMovie
}

struct Film {
    var tickets: Int
    var priceForTicket: Double
}

class Cinema {
    
    var sessions = [
        "The Avengers": Film(tickets: 15, priceForTicket: 5),
        "Interstellar": Film(tickets: 20, priceForTicket: 7),
        "The Matrix": Film(tickets: 17, priceForTicket: 5.5),
        "Deadpool": Film(tickets: 15, priceForTicket: 5.7)
    ]
    
    var money: Double = 0
    
    func errors(movieTitle title: String) throws {
        
        guard let movies = sessions[title] else {
            throw cinemaError.noMovie
        }
        
        guard movies.tickets > 0 else{
            throw cinemaError.noTickets
        }
        
        guard movies.priceForTicket <= money else {
            throw cinemaError.insufficientFunds(moneyNeeded: movies.priceForTicket - money)
        }
        
        money -= movies.priceForTicket
        
        var someMovie = movies
        someMovie.tickets -= 1
        sessions[title] = someMovie
        
        print("Bought a ticket to the movie \(title).")
    }
}

let favoriteMovie = [
    "Maria": "Interstellar",
    "Alex": "Interstellar",
    "Anna": "Deadpool"
]

func selectedSession(person: String, session: Cinema) throws {
    
    let personName = favoriteMovie[person] ?? "Matrix"
    try session.errors(movieTitle: personName)
}

var onlineCinema = Cinema()
onlineCinema.money = 20


func testError(name: String,sessionCinema: Cinema) throws {
    
    do {
        try selectedSession(person: name, session: sessionCinema)
    } catch cinemaError.noMovie {
        print("This movie is not available.")
    } catch cinemaError.noTickets {
        print("Tickets for this movie have run out.")
    } catch cinemaError.insufficientFunds(let moneyNeeded) {
        print("Insufficient funds, missing another \(moneyNeeded) dollars")
    }
}

