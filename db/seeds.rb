# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Reading.create(:reading => 'しょぼーん')
Reading.create(:reading => 'えっと')
Reading.create(:reading => 'うーん')
Feeling.create(:name => '悲しみ')
Feeling.create(:name => 'がっかり')
Feeling.create(:name => '戸惑い')
Feeling.create(:name => '呆れ')
Kaomoji.create(:kaomoji => '(´・ω・｀)', :registered_time => '2013-11-6 12:34:56', :published_time => '2000-01-01 00:00:00', :status => 0, :has_words => false, :readings => Reading.where(:reading => 'しょぼーん'), :feelings => Feeling.where(:name => ['悲しみ', 'がっかり']))
Kaomoji.create(:kaomoji => '(゜_゜)', :registered_time => '2013-10-6 12:34:56', :published_time => '2000-01-01 00:00:00', :status => 0, :has_words => false, :readings => Reading.where(:reading => ['えっと', 'うーん']), :feelings => Feeling.where(:name => ['戸惑い', '呆れ']))

