////////// Shared code (client and server) //////////

Games = new Meteor.Collection('games')
// { date, time, players}

Hands = new Meteor.Collection('hands')
//  {
//   players: {
//     'id1': {
// 	  team: 1,
// 	  bid: 5,
// 	  taken: 3
//     },
//     'id2': {
//       team: 2,
//       bid
//     }
//   }
// }

Players = new Meteor.Collection('players')
// {name: 'matt', game_id: 123}