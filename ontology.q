[QueryItem="Get field details"]
PREFIX : <http://example.org/uaz#>

SELECT ?field ?culture ?tool ?track {
?f :hasAgricultural ?ac; :hasName ?field .
?ac :toolTypeRequired ?tool ; :hasName ?culture; :trackRequired ?tr .
?tr :hasName ?track
}
[QueryItem="Find a suitable HAW"]
PREFIX : <http://example.org/uaz#>

SELECT ?field ?culture ?track ?tool ?powerNeed ?vehicle ?power {
?f :hasAgricultural ?ac ; :hasName ?field .
?ac :hasName ?culture ; :toolTypeRequired ?tt ; :trackRequired ?tr .
?tr :hasName ?track .
?tl :toolType ?tt ; :hasName ?tool ; :powerRequired ?powerNeed .
?v a :Vehicle ; :hasName ?vehicle ; :power ?power ; FILTER ( ?power >= ?powerNeed ) .
}