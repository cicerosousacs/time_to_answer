class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # METODO PARA JUNTAR CAMPOS
  def user_name
    [self.first_name, self.last_name].join(" ")
  end
end
