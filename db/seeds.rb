# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserRole.delete_all
UserRole.create({name: "owner", rank: 0})
UserRole.create({name: "admin", rank: 1})
UserRole.create({name: "user", rank: 2})

Experience.delete_all

exp = Experience.create(name: "Java", value: 4, parent_id: -1)
Experience.create(name: "Spring Framework", value: 1, parent_id: exp.id)

exp = Experience.create({name: "Ruby", value: 1, parent_id: -1})
Experience.create({name: "Ruby on Rails", value: 1, parent_id: exp.id})

exp = Experience.create({name: "Javascript", value: 5, parent_id: -1})
Experience.create({name: "D3.js", value: 1, parent_id: exp.id})
Experience.create({name: "jQuery", value: 2, parent_id: exp.id})
Experience.create({name: "TestComplete", value: 4, parent_id: exp.id})

exp = Experience.create({name: "LaTeX", value: 1, parent_id: -1})

exp = Experience.create({name: "C", value: 2, parent_id: -1})
Experience.create({name: "CUDA", value: 1, parent_id: exp.id})
Experience.create({name: "OpenMP", value: 1, parent_id: exp.id})
Experience.create({name: "MPI", value: 1, parent_id: exp.id})
