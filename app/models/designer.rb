class Designer < ApplicationRecord
    has_many :projects
    has_many :clients
end