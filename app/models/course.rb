class Course < ApplicationRecord
    validates :name, presence:true
    validates :short_name, presence:true
    validates :description, presence:true, length: {minimum:2, maximum:50}
    has_many :student_courses
    has_many :students, through: :student_courses
end
