class Project < ApplicationRecord

belongs_to :host, class_name: 'User', foreign_key: :user_id
has_many :user_projects
has_many :supporters, through: :user_projects, source: :user
has_many :comments

end
