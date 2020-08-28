class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    return "#{capitalize_first_name} #{self.last_name.capitalize} Coco"
  end

  private

  def capitalize_first_name
    "#{self.first_name.capitalize}"
  end
end
