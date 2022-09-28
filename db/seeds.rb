# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'onsen@onsen.com',
   password: 'pooh44233'
)

Information.create!(
   [
      {name: '露天風呂'},
      {name: '天然温泉'},
      {name: '掛け流し'},
      {name: 'サウナ'},
      {name: 'シャンプー等'},
      {name: '食事処'},
      {name: '休憩所'},
      {name: '駐車場'},
   ]
)

Onsen.create!(
      {name: '青森まちなかおんせん', address: '青森県青森市古川1-10-14', opening_hours: '6:00〜24:00', price: '大人450円 小人150円', spring_quality: 'ナトリウム - 塩化物泉（低張性 弱アルカリ性 高温泉）'}
   )