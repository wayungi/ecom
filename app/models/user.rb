class User < ApplicationRecord
  validates :fname, :lname, :tel, :address, :role, presence: true  
  validates :fname, :lname, length: {maximum: 30 }    
  validates :tel, length: {maximum: 12}                                           
  validates :address, :email, length: {maximum:50} 
  validates  :password, length: {in: 8..20}                                    
end
