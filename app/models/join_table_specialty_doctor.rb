class JoinTableSpecialtyDoctor < ApplicationRecord
    has_many :specialties
    has_many :doctors
end
