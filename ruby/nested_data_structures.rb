futbol_championships = [
	copa_america = {
		year: 2016,
		host: "USA",
		total_teams: 16,
		date_start: "June 3rd, 2016",
		date_end: "June 26th, 2016",
		active_teams: ["Argentina", "Chile"],
		countries: [
			argentina = {
					group: "Group D", 
					active: true
				},
			bolivia = {
					group: "Group D", 
					active: false
				},
			brazil = {
					group: "Group B", 
					active: false				
				},
			chile = {
					group: "Group D", 
					active: true				
				},
			colombia = {
					group: "Group A", 
					active: false				
				},
			Ecudador =  {
					group: "Group B", 
					active: false				
				},
			Paraguay =  {
					group: "Group A", 
					active: false				
				},
			Peru = {
					group: "Group B", 
					active: false				
				},
			Uruguay = {
					group: "Group C", 
					active: false				
				},
			Venezuela = {
					group: "Group C", 
					active: false				
				},
			United_States = {
					group: "Group A", 
					active: false				
				},
			Mexico = {
					group: "Group C", 
					active: false				
				},
			Costa_Rica = {
					group: "Group A", 
					active: false				
				},
			Jamaica = {
					group: "Group C", 
					active: false				
				},
			Haiti = {
					group: "Group B", 
					active: false				
				},
			Panama = {
					group: "Group D", 
					active: false				
				}
		]

		
	},

	euro = {
		year: 2016,
		host: "France",
		total_teams: 24,
		date_start: "June 10th, 2016",
		date_end: "July 10th, 2016",
		active_teams: ["Switzerland","Poland","Croatia","Portugal","Wales","Northern Ireland","Hungary","Belgium","Germany","Slovakia","Italy","Spain","France","Ireland","England","Iceland"],
		countries: [
			France: {
					group: "Group A", 
					active: true
				},
			Switzerland: {
					group: "Group A", 
					active: true
				},
			Albania: {
					group: "Group A", 
					active: false				
				},
			Romania: {
					group: "Group A", 
					active: true				
				},
			Wales: {
					group: "Group B", 
					active: true				
				},
			England: {
					group: "Group B", 
					active: true				
				},
			Slovakia: {
					group: "Group A", 
					active: true				
				},
			Russia: {
					group: "Group B", 
					active: false				
				},
			Germany: {
					group: "Group C", 
					active: true				
				},
			Poland: {
					group: "Group C", 
					active: true				
				},
			Northern_Ireland: {
					group: "Group C", 
					active: true				
				},
			Ukraine: {
					group: "Group C", 
					active: false				
				},
			Croatia: {
					group: "Group D", 
					active: true				
				},
			Spain: {
					group: "Group D", 
					active: true				
				},
			Turkey: {
					group: "Group D", 
					active: false				
				},
			Czech_Republic: {
					group: "Group D", 
					active: false				
				},
			Italy: {
					group: "Group E", 
					active: true				
				},
			Belgium: {
					group: "Group E", 
					active: true				
				},
			Ireland: {
					group: "Group E", 
					active: true				
				},
			Sweden: {
					group: "Group E", 
					active: false				
				},						
			Hungary: {
					group: "Group F", 
					active: true				
				},
			Iceland: {
					group: "Group F", 
					active: true				
				},		
			Portugal: {
					group: "Group F", 
					active: true				
				},	
			Austria: {
					group: "Group F", 
					active: false				
				}										
		]

		
	}

]

# puts futbol_championships[0][:year]
# puts futbol_championships[0][:total_teams]
# puts futbol_championships[0][:host]
# puts futbol_championships[0][:date_start]
# puts futbol_championships[0][:date_end]
# puts futbol_championships[0][:active_teams]
# puts futbol_championships[0][:countries]

# puts futbol_championships[1][:year]
# puts futbol_championships[1][:total_teams]
# puts futbol_championships[1][:host]
# puts futbol_championships[1][:date_start]
# puts futbol_championships[1][:date_end]
# puts futbol_championships[1][:active_teams]
# puts futbol_championships[1][:countries]

# puts futbol_championships[0][:year].class
# puts futbol_championships[0][:total_teams].class
# puts futbol_championships[0][:host].class
# puts futbol_championships[0][:date_start].class
# puts futbol_championships[0][:date_end].class
# puts futbol_championships[0][:active_teams].class
# puts futbol_championships[0][:countries].class


puts futbol_championships[0][:winner] = "TBD"
# puts futbol_championships[0][:active_teams]
# futbol_championships[0][:countries].map! do |country| 
# 	 puts country	# puts country[:active]= false
#end

futbol_championships[0][:countries][0]
# puts futbol_championships[0][:countries].keys[1]


# puts futbol_championships[0][:countries][]
#not done