import UIKit
// on line 3: creating an empty array called authorArray
var authorArray : [String] = []
// on lines 5-9: Creating an dictionary called quoteDict. Key are the authors and the Values are the quotes.
var quoteDict = [
    "Shakespeare": "To be or not to be",
    "Martin Luther King": "I have a dream",
    "Abraham Lincoln": "Four score and 7 years ago"
]
// lines 11-13: This fills up the authorArray with a list of the 3 authors
for (thisAuthor, thisQuote) in quoteDict{
    authorArray.append(thisAuthor)
}

//now we access this person's value using his name as a key from dict
var currentQuote = quoteDict[authorArray[0]]!

print(authorArray)

print(authorArray[0]) //Gives us the author in the array
print(quoteDict[authorArray[0]]!)
print(quoteDict["Abraham Lincoln"]!)

print("\(currentQuote) is one of the quotes of the author \(authorArray[0])")
