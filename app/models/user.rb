class User < ApplicationRecord
  include AASM
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  #states
  aasm do
    state :user, initial: true
    state :seller, :admin

    event :seller_create do
      transitions from: :user, to: :seller
    end

    event :admin_create do
      transitions from: [:user, :seller], to: :admin
    end
  end
end
