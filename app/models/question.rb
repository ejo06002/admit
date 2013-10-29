class Question < ActiveRecord::Base
  attr_accessible :applicant_id, :subject, :q_content

  belongs_to :applicant

  validates :q_content, presence: true, length: {minimum: 15}
  validates :subject, presence:true, length: {minimum: 15}

end
