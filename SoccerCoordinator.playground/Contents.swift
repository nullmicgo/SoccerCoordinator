import UIKit

//STEP 1
/*
** Part 1: ** We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
*/
let name: String = "name"
let height: String = "height (inches)"
let soccerExperience: String = "soccer experience"
let guardianNames: String = "guardian Name(s)"

let joeSmith: Dictionary<String, Any> = [
    name: "Joe Smith",
    height: 42,
    soccerExperience: true,
    guardianNames: "Jim and Jan Smith"
]

let jillTanner: Dictionary<String, Any> = [
    name: "Jill Tanner",
    height: 36,
    soccerExperience: true,
    guardianNames: "Clara Tanner"
]

let billBon: Dictionary<String, Any> = [
    name: "Bill Bon",
    height: 43,
    soccerExperience: true,
    guardianNames: "Sara and Jenny Bon"
]

let evaGordon: Dictionary<String, Any> = [
    name: "Eva Gordon",
    height: 45,
    soccerExperience: false,
    guardianNames: "Wendy and Mike Gordon"
]

let mattGill: Dictionary<String, Any> = [
    name: "Matt Gill",
    height: 40,
    soccerExperience: false,
    guardianNames: "Charles and Sylvia Gill"
]

let kimmyStein: Dictionary<String, Any> = [
    name: "Kimmy Stein",
    height: 41,
    soccerExperience: false,
    guardianNames: "Bill and Hillary Stein"
]

let sammyAdams: Dictionary<String, Any> = [
    name: "Sammy Adams",
    height: 45,
    soccerExperience: false,
    guardianNames: "Jeff Adams"
]

let karlSaygan: Dictionary<String, Any> = [
    name: "Karl Saygan",
    height: 42,
    soccerExperience: true,
    guardianNames: "Heather Bledsoe"
]

let suzaneGreenbergi: Dictionary<String, Any> = [
    name: "Suzane Greenberg",
    height: 44,
    soccerExperience: true,
    guardianNames: "Henrietta Dumas"
]

let salDali: Dictionary<String, Any> = [
    name: "Sal Dali",
    height: 41,
    soccerExperience: false,
    guardianNames: "Gala Dali"
]

let joeKavalier: Dictionary<String, Any> = [
    name: "Joe Kavalier",
    height: 39,
    soccerExperience: false,
    guardianNames: "Sam and Elaine Kavalier"
]

let benFinkelstein: Dictionary<String, Any> = [
    name: "Ben Finkelstein",
    height: 44,
    soccerExperience: false,
    guardianNames: "Aaron and Jill Finkelstein"
]

let diegoSoto: Dictionary<String, Any> = [
    name: "Diego Soto",
    height: 41,
    soccerExperience: true,
    guardianNames: "Robin and Sarika Soto"
]

let chloeAlaska: Dictionary<String, Any> = [
    name: "Chloe Alaska",
    height: 47,
    soccerExperience: false,
    guardianNames: "David and Jamie Alaska"
]

let arnoldWillis: Dictionary<String, Any> = [
    name: "Arnold Willis",
    height: 43,
    soccerExperience: false,
    guardianNames: "Claire Willis"
]

let phillipHelm: Dictionary<String, Any> = [
    name: "Phillip Helm",
    height: 44,
    soccerExperience: true,
    guardianNames: "Thomas Helm and Eva Jones"
]

let lesClay: Dictionary<String, Any> = [
    name: "Les Clay",
    height: 42,
    soccerExperience: true,
    guardianNames: "Wynonna Brown"
]

let herschelKrustofski: Dictionary<String, Any> = [
    name: "Herschel Krustofski",
    height: 45,
    soccerExperience: true,
    guardianNames: "Hyman and Rachel Krustofski"
]


//STEP 2
/*
 ** Part 2: ** Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)
Also, if you would like to attain an “exceeds expectations” rating for this project, add logic to ensure that each team's average height is within 1.5 inches of the others.
 */
let players: [Dictionary<String, Any>] = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenbergi,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

// Separate players into arrays by experience
var experiencedPlayers: [Dictionary<String, Any>] = []
var noExperiencedPlayers: [Dictionary<String, Any>] = []
for player in players {
    if player[soccerExperience] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        noExperiencedPlayers.append(player)
    }
}



//STEP 3
/*
 
 ** Part 3: ** Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:
 
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm

 
 */
var sharks: [Dictionary<String, Any>] = []
var dragons: [Dictionary<String, Any>] = []
var raptors: [Dictionary<String, Any>] = []

//seperate different experience membr into above 3 team
func playerBelongTeam (targetArray: [Dictionary<String, Any>]){
    for i in 0..<targetArray.count {
        let player = targetArray[i]
        let mod = i % 3
        switch(mod){
        case 0:raptors.append(player);break;
        case 1:dragons.append(player);break;
        default:sharks.append(player);break;
        }
    }
}
playerBelongTeam(targetArray: experiencedPlayers);
playerBelongTeam(targetArray: noExperiencedPlayers);


var letters: [String] = []

//print out the letter by teamArray, teamName and teamTargetTime
func printByArray (targetArray: [Dictionary<String, Any>], teamName:String, teamTargetTime:String){
    for player in targetArray {
        letters.append("Dear \(player[guardianNames]!), your child, \(player[name]!), has been placed on the team \(teamName). The first practice for the \(teamName) is \(teamTargetTime).")
    }
}

printByArray(targetArray: sharks, teamName: "Sharks", teamTargetTime: "March 17, 1pm");
printByArray(targetArray: dragons, teamName: "Dragons", teamTargetTime: "March 17, 3pm");
printByArray(targetArray: raptors, teamName: "Raptors", teamTargetTime: "March 18, 1pm");


//printout the letter
for letter in letters {
    print(letter)
}

