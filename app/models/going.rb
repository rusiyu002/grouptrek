class Going < ApplicationRecord
rails generate starter:resource going user_id:integer trek_id:integ
belongs_to :user
belongs_to :trek
end
