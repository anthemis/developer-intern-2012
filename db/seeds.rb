# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Instruction.destroy_all

Instruction.create( { :title => 'Opportunity', :text => "*  Welcome to this exciting opportunity to get some real-world developer experience working for one of the UK's most innovative financial services companies.

*  Anthemis Group is looking for a creative, self-motivated intern to help with transforming the group's <a href=\"http://anthemis.com\">web presence</a> into an interactive platform for our clients and potential clients.

* There will be additional opportunities to work with our portfolio companies on new financial services applications." } )

Instruction.create( { :title => 'Skills', :text => "* We are looking for someone with basic Ruby on Rails skills and an ability to understand business requirements and translate them into usable web applications." } )

Instruction.create( { :title => 'Personal qualities', :text => "* You will be able to demonstrate a Rails app that you have developed yourself and talk intelligently about your design approach and how you dealt with problems as you developed the app." } )

Instruction.create( { :title => 'How to apply', :text => "* You've already got this far, so you're nearly there. Well done!

* Now add a page about yourself to this app, so I can see it at `http://localhost:3000/people/<your name>`. I've already created mine <a href=\"/people/dominic\">here</a>.

* Use your page to tell me about yourself and why we should pick you to be our intern.

* Maybe I haven't done my page the most elegant way. Perhaps you can think of a better way to do it?

* When you've added your code, send me a message on GitHub (I'm <a href=\"https://github.com/dominicsayers\">dominicsayers</a>) or email me at <a href=\"mailto:dominic@anthemis.com?subject=Anthemis%20Group%3A%20Developer%20Intern%202012&body=My%20application%20code%20is%20here%3A%20\">dominic@anthemis.com</a> to tell me where I can find your app.

* Don't submit a pull request because it's a bit public.

* I'm really excited to see what you come up with!" } )
