# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mentor.create!([{
                    username: 'Tolani',
                    email: 'tola@ni.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Adedamola',
                    email: 'dama@ola.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Precious',
                    email: 'precsh@ous.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Oluwatobi',
                    email: 'tobz@loba.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Chinedu',
                    email: 'chin@dus.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Ijeoma',
                    email: 'ij@ma.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Fatima',
                    email: 'fats@ma.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                },
                {
                    username: 'Abudlai',
                    email: 'abd@ul.c',
                    password: 'password',
                    confirmed_at: DateTime.now
                }
               ])