# Notice that we are limiting the dates to a thousand, this is due to
# a technical problems that David Eads knows about and and will
# hopefully be able to address soon

date <- read.csv("http://cookcountyjail.recoveredfactory.net/api/1.0/courtdate/?format=csv&limit=1000")

people <- read.csv("http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=csv&limit=0")

court_data <- merge(people, date, by.x="jail_id", by.y="inmate_jail_id")

