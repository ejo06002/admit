class Question < ActiveRecord::Base
  attr_accessible :applicant_id, :subject, :q_content
end
