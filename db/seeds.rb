# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

	League.create(name: 'Premier League', country: 'England', website: 'http://premierleague.com', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'Lotto Ekstraklasa', country: 'Poland', website: 'http://ekstraklasa.org', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'Serie A', country: 'Italy', website: 'http://legaseriea.it', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'Bundesliga', country: 'Germany', website: 'http://bundesliga.com', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'Ligue 1', country: 'France', website: 'http://ligue1.com', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'Nice 1 Liga', country: 'Poland', website: 'http://1liga.org', created_at: DateTime.current, updated_at: DateTime.current)
	League.create(name: 'EFL Championship', country: 'England', website: 'https://www.efl.com/clubs-and-competitions/sky-bet-championship/', created_at: DateTime.current, updated_at: DateTime.current)

	Team.create(name: 'Legia Warszawa', city: 'Warsaw', founded: Date.parse("01/02/1946"), league_id: 2, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Arsenal FC', city: 'London', founded: Date.parse("01/02/1944"), league_id: 1, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Juventus', city: 'Torino', founded: Date.parse("01/02/1955"), league_id: 3, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Bayern', city: 'Munich', founded: Date.parse("01/02/1944"), league_id: 4, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Paris Saint Germain', city: 'Paris', founded: Date.parse("01/02/1920"), league_id: 5, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Olympique Lyonnais', city: 'Lyon', founded: Date.parse("01/02/1930"), league_id: 5, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Termalica Bruk-Bet', city: 'Nieciecza', founded: Date.parse("01/02/1922"), league_id: 2, created_at: DateTime.current, updated_at: DateTime.current)
	Team.create(name: 'Chelsea FC', city: 'London', founded: Date.parse("01/02/1984"), league_id: 1, created_at: DateTime.current, updated_at: DateTime.current)

	Player.create(name: 'Petr', surname: 'Cech', born: Date.parse("01/02/1988"), country: 'Czech Republic', position: 'Goalkeeper', team_id: 2, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Artur', surname: 'Jędrzejczyk', born: Date.parse("01/02/1955"), country: 'Poland', position: 'Left-Backward', team_id: 1, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Gonzalo', surname: 'Higuain', born: Date.parse("01/02/1966"), country: 'Argentina', position: 'Striker', team_id: 3, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Robert', surname: 'Lewandowski', born: Date.parse("01/02/1976"), country: 'Poland', position: 'Striker', team_id: 4, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'David', surname: 'Luiz', born: Date.parse("01/02/1987"), country: 'Brazil', position: 'Central-Backward', team_id: 5, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Thibaut', surname: 'Courtois', born: Date.parse("01/02/1987"), country: 'Belgium', position: 'Goalkeeper', team_id: 8, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Alexandre', surname: 'Lacazette', born: Date.parse("01/02/1984"), country: 'France', position: 'Striker', team_id: 2, created_at: DateTime.current, updated_at: DateTime.current)
	Player.create(name: 'Marcos', surname: 'Alonso', born: Date.parse("01/02/1983"), country: 'Spain', position: 'Right-Backward', team_id: 8, created_at: DateTime.current, updated_at: DateTime.current)