Template.hand.myTaken = ->
	hand = Hands.findOne()
	me = Meteor.userId()
	
	hand.players[me].taken if me && hand