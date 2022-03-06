class Task < ApplicationRecord
  belongs_to :project
  enum status: {  pending: 0, started: 1, finished: 2 }
end
