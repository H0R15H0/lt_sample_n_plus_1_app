# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: '山田太郎', email: 'yamada@taro.com'},{name: '佐藤花子', email: 'sato@hanako.com'}])
tags = Tag.create([{name: 'プログラミング'},{name: '英語'},{name: '読書'}])
tasks = [{task: "競プロやる", tag_id: tags[0].id}, {task: "TOEIC勉強する", tag_id: tags[1].id}, {task: "SQLアンチパターンを読む", tag_id: tags[2].id}, {task: "実践ハイパフォーマンスMySQLを読む", tag_id: tags[2].id}]
times = [100, 60, 30]
users.each do |user|
  1000.times do |i|
    t = tasks.sample
    UsersTask.create(user_id: user.id, task: "#{t[:task]} #{i}", tag_id: t[:tag_id], time_required: times.sample)
  end
end