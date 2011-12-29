class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false
  
 # attr_accessible :first_name, :last_name, :email, :password, :password_confirmation

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_only_destroyed
    self.with_exclusive_scope :find => { :conditions => "deleted_at is NOT NULL" } do
      all
    end
  end

  def destroy
    self.update_attribute(:deleted_at, Time.now.utc)
  end


end
