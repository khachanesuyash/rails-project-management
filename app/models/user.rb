class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :projects, dependent: :delete_all
    has_many :tasks, dependent: :delete_all
    has_many :comments
    accepts_nested_attributes_for :projects, update_only: true

end
