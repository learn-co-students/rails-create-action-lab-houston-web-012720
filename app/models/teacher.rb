class Teacher < ActiveRecord::Base
  has_many :projects
  has_many :students, through: :projects

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end