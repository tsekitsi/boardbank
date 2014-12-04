class Organization < ActiveRecord::Base
 devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :orgname, :orgabout, :email, :password, :password_confirmation, :remember_me, :approved
  # attr_accessible :title, :body

  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end
end
