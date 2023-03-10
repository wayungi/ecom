class User < ApplicationRecord
  validates :fname, :lname, :address, :role, :email, presence: true  
  validates :fname, :lname, length: {maximum: 30 }    
  validates :tel, length: {in: 10..12}                                           
  validates :address, :email, length: {maximum:50} 
  validates  :password, length: {in: 8..20}                                    
end
