class StudentProfile < ApplicationRecord
  enum gender: { male: 1, female: 2, prefer_not_to_answer: 3, gender_neutral: 4 }
  belongs_to :user
end
