Template.hand.events = 
	'click #taken-btn': ->
		userId = Meteor.userId()
		console.log "taking one for #{userId}"
		hand = Hands.findOne()
		updater = {}
		updater["players.#{userId}.taken"] = 1
		Hands.update hand._id, {$inc: updater}
