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


specialty = ["Obstétrique", "Générale", "Chirurgie", "Gastro"]

20.times do
  doctor = Doctor.create!(
                        firts_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        specialty: specialty[rand(0..3)],
                        zip_code: Faker::Number.between(from: 10000, to: 99999))
end

20.times do
    patient = Patient.create!(
                        firts_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name)
end

20.times do |t|
    appointment = Appointment.create(
                        date: DateTime.new(2023,2,18),
                        doctor_id: t+1,
                        patient_id: t+1)
end




