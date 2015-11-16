class Todo < ActiveRecord::Base
    scope :search, -> (search_term) { where('title LIKE ?', "%#{search_term}%") }
end
