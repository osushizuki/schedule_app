class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :interview

  validates :company, presence: true
  validates :interview_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :dating, presence: true, format:{with: /\A[0-9]+\z/}
  validates :start_time, presence: true
  validates :end_time, presence: true
end
