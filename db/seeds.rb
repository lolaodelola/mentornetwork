# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tags = Tag.create!([
                       {
                         name: 'QA'
                       },
                       {
                         name: 'Rails'
                       },
                       {
                         name: 'Ruby'
                       },
                       {
                         name: 'JavaScript'
                       },
                       {
                         name: 'UI'
                       },
                       {
                         name: 'UX'
                       },
                       {
                         name: 'Product Design'
                       },
                       {
                         name: 'Product Managment'
                       },
                       {
                         name: 'Web Design'
                       },
                       {
                         name: 'Android'
                       },
                       {
                         name: 'iOS'
                       }
                   ])
mentors = Mentor.create!([
                           {
                             username: 'Tolani',
                             job_role: 'Product Manager',
                             email: 'tola@ni.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Adedamola',
                             job_role: 'Product Manager',
                             email: 'dama@ola.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Precious',
                             job_role: 'Support Engineer',
                             email: 'precsh@ous.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Oluwatobi',
                             job_role: 'Developer Advocate',
                             email: 'tobz@loba.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Chinedu',
                             job_role: 'Node Engineer',
                             email: 'chin@dus.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Ijeoma',
                             job_role: 'Database Engineer',
                             email: 'ij@ma.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Fatima',
                             job_role: 'Front End Developer',
                             email: 'fats@ma.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           },
                           {
                             username: 'Abudlai',
                             job_role: 'Rails Developer',
                             email: 'abd@ul.c',
                             password: 'password',
                             confirmed_at: DateTime.now
                           }
                         ])

mentors.each do |mentor|
  count = Tag.count
  random_offset = rand(count)
  tag = Tag.offset(random_offset).first
  MentorTag.create!({
                      mentor_id: mentor.id,
                      tag_id: tag.id
                    })
end

