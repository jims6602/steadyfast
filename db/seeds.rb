# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dictionary Seed

Dictionary.create(word:"abash",  partOfSpeech:"v.", definition:"embarrass.", wordUsage:"He was not at all abashed by her open admiration." )

Dictionary.create(word:"abhor",  partOfSpeech:"v.", definition:"detest; hate.", wordUsage:"She abhorred all forms of bigotry, abhorrence." )

Dictionary.create(word:"accord",  partOfSpeech:"v.", definition:"agreement.", wordUsage:"She was in complete accord with the verdict." )

Dictionary.create(word:"acetic",  partOfSpeech:"ADJ.", definition:"vinegary.", wordUsage:"The salad had an exceedingly acetic flavor." )

Dictionary.create(word:"actuate",  partOfSpeech:"v.", definition:"motivate.", wordUsage:"I fail to understand what actuated you to reply to this letter so nastily." )

Dictionary.create(word:"babble",  partOfSpeech:"v.", definition:"chatter idly.", wordUsage:"The little girl babbled about her doll, also." )

Dictionary.create(word:"bacchanalian",  partOfSpeech:"ADJ.", definition:"drunken.", wordUsage:"Emperor Nero attended the bacchanalian orgy.")

Dictionary.create(word:"baffle",  partOfSpeech:"v.", definition:"frustrate; perplex.", wordUsage:"The new code baffled the enemy agents." )

Dictionary.create(word:"bard",  partOfSpeech:"N.", definition:"poet.", wordUsage:"The ancient bard Homer sang of the fall of Troy." )

Dictionary.create(word:"begrudge",  partOfSpeech:"v.", definition:"resent.", wordUsage:"I begrudge every minute I have to spend attending meetings." )

Dictionary.create(word:"cadaver",  partOfSpeech:"N.", definition:"corpse.", wordUsage:"In some states, it is illegal to dissect cadavers." )

Dictionary.create(word:"chastise",  partOfSpeech:"v.", definition:"punish.", wordUsage:"I must chastise you for this offense." )

Dictionary.create(word:"chide",  partOfSpeech:"v.", definition:"scold.", wordUsage:"Grandma began to chide Steven for his lying." )

Dictionary.create(word:"cloister",  partOfSpeech:"v.", definition:"monastery or convent.", wordUsage:"The nuns lived in the cloister." )

Dictionary.create(word:"condiments",  partOfSpeech:"N.", definition:"seasonings; spices.", wordUsage:"Spanish food is full of condiments." )

Dictionary.create(word:"crone",  partOfSpeech:"N.", definition:"hag.", wordUsage:"The toothless crone frightened us when she smiled." )

# User Seed

User.create( email:"bill@hotmail.com", password:"pwb", firstName:"Bill", lastName: "Clinton", rights:"user" )
User.create( email:"john@hotmail.com", password:"pwj", firstName:"John", lastName: "Cusey", rights:"admin" )
User.create( email:"dick@hotmail.com", password:"pwd", firstName:"Dick", lastName: "Nixon", rights:"user" )
User.create( email:"barack@hotmail.com", password:"pwb", firstName:"Barack", lastName: "Obama", rights:"user" )


# Correctnesses Seed

Correctness.create(dictionary_id:1, user_id:1, totalTryCount:5, rightCount:2 )
Correctness.create(dictionary_id:2, user_id:1, totalTryCount:6, rightCount:5 )
Correctness.create(dictionary_id:3, user_id:1, totalTryCount:8, rightCount:4 )
Correctness.create(dictionary_id:4, user_id:1, totalTryCount:3, rightCount:1 )
Correctness.create(dictionary_id:1, user_id:2, totalTryCount:5, rightCount:2 )
Correctness.create(dictionary_id:2, user_id:2, totalTryCount:7, rightCount:4 )
Correctness.create(dictionary_id:3, user_id:2, totalTryCount:1, rightCount:0 )





