instance creation
toNFA

	| op |
	op := operand toNFA. "can be an NFANode but startNode and endNode are poly"
	^ ParsecNFAGraph new startNode: op startNode; endNode: op endNode.
