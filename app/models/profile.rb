class Profile < ActiveRecord::Base
  belongs_to :user
  validate :name_or_surname_existance
  
  validates :gender, inclusion: { in: ["male","female"],message: "%{value} is not a valid gender" }
  validate :boy_not_sue


 def boy_not_sue
   errors.add(:first_name, "Boy cannot be named Sue!") if first_name == "Sue" and gender == "male"
 end 


  def name_or_surname_existance
    errors.add(:first_name,"You must type first and/or last name") unless first_name or last_name
  end

  def self.get_all_profiles(min_year,max_year)
	  Profile.where(birth_year: min_year .. max_year).order(:birth_year)
  end
end
