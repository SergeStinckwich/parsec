tests
testJsonTA

	| tJSParser  |
	tJSParser := ParsecJsonGrammar new with: ParsecAlgo. "remember that the grammar is created its time -- for bench etc"

	charts := tJSParser parse: '{ "firstName" : "John",
"lastName" : "Smith",
"age" : 25,
"address" :
{ "streetAddress" : "21 2nd Street",
"city" : "New York",
"state" : "NY",
"postalCode" : "10021" },
"phoneNumber":
[
{ "type" : "home",
"number" : "212 555-1234" },
{ "type" : "fax",
"number" : "646 555-4567" } ] }'.

	self assert: charts succeeded.