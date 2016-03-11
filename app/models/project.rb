class Project < ApplicationRecord
  has_attached_file :input_file
  has_attached_file :output_file
end
