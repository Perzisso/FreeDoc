# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'date'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

specialtys = ["Obstétrique", "Gatro", "Générale", "Chirurgie", "Pré-natale", "Radiologue", "Kiné", "Rénimation", "Oncologue", "Urologue"]

10.times do
  city = City.create!(city_name: Faker::Nation.capital_city)
end

10.times do 
  specialty = Specialty.create(specialty: specialtys[rand(0..9)])
end

10.times do |t|
  doctor = Doctor.create!(
                        firts_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        zip_code: Faker::Number.between(from: 10000, to: 99999),
                        city_id: t+1,
                        specialty_id: t+1)
end

10.times do |t|
    patient = Patient.create!(
                        firts_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        city_id: t+1)
end

10.times do |t|
    appointment = Appointment.create(
                        date: DateTime.new(2023,2,18),
                        doctor_id: t+1,
                        patient_id: t+1)
end






