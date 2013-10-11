users = [
	{username: "Dean"
	email: "deanmisc@yahoo.com"
	password: "spades"}
	,
	{username: "Jess"
	email: "jjoslyn6@yahoo.com"
	password: "spades"}
	,
	{username: "Miles"
	email: "miles@thegalfers.com"
	password: "spades"}
	,
	{username: "Erin"
	email: "erin422@gmail.com"
	password: "spades"}
]

Meteor.startup ->
	if Games.find().count() is 0
		
		gameId = Games.insert {upto: 500}
		handId = Hands.insert {gameId: gameId}

		players = {}
		for user, idx in users
			user.id = Accounts.createUser(user)
			console.log "Created #{user.username} #{user.id}.."
			players[user.id] = {
				team: idx%2+1
				bid: 3
				taken: 0
			}
		Hands.update(handId, {$set: {players: players}})

