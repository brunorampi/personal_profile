# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


titles_arr = ['Ruby', 'JavaScript', 'React', 'Rails', 'Rails', 'JavaScript'];

date_arr = ['23-12-2016', '24-12-2016', '25-12-2016', '05-01-2017', '09-01-2017', '10-01-2017']

description_arr = [' Conference about Ruby where...', 'Nice talk where Pedro explained ', 'Stand up meeting with same rectruiters for a job using React', 'Oh, do you love or hate rails?', 'Again rails(difficult topic)', 'JS is still the best?Talk to Harry']

image_arr = ['https://www.sitepoint.com/wp-content/themes/sitepoint/assets/images/icon.ruby.png', 'http://www.dukelearntoprogram.com/course1/common/images/js-logo-badge.png', 'https://facebook.github.io/react/img/logo.svg', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/593px-Ruby_on_Rails.svg.png', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/593px-Ruby_on_Rails.svg.png', 'http://www.dukelearntoprogram.com/course1/common/images/js-logo-badge.png']

source_arr = [ 'DT', 'News', 'Online blog', 'Chloe', 'Kasun']

author_arr = ['', 'James', 'Micah', 'Chloe+Vanessa', 'Kasun']

notes_arr = ['It was a great talk which explains the importance...Memo:...', '', '', '', '']

topics = []
Topic.delete_all

5.times do |i|
  topic = Topic.new
  topic.title = titles_arr[i]
  topic.date = date_arr[i]
  topic.description = description_arr[i]
  topic.image = image_arr[i]
  topic.source = source_arr[i]
  topic.author = author_arr[i]
  topic.notes = notes_arr[i]
  topic.save
  topics.push(topic)
end
