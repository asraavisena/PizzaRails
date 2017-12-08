# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(email: 'test@example.com', password: '123456',
            password_confirmation: '123456')
Menuitem.destroy_all
Menuitem.create(name: 'Pizza Mozarella', price: 5, description: 'Mozarella')
Menuitem.create(name: 'Pizza Tomaten', price: 4, description: 'Tomaten')
Menuitem.create(name: 'Pizza Thunfisch', price: 6, description: 'Thunfisch')