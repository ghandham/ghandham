class Student < ApplicationRecord

 validates :name, presence: true,
                    length: { minimum: 1,maximun: 20 }
      validates :age, presence: true,numericality: { only_integer: true }
                   
                    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :mail, presence: true, format: { with: VALID_EMAIL_REGEX }


 validates :qualification, presence: true,
                    length: { minimum: 1,maximun: 10 }  

end