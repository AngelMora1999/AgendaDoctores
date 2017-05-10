# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  identification_card    :string
#  abbreviaton            :string
#  first_name             :string
#  second_name            :string
#  surname                :string
#  second_surname         :string
#  birth_date             :datetime
#  doctor_since           :datetime
#  bio                    :text
#  state                  :string
#  city                   :string
#  address                :string
#  phone                  :string
#  cell_phone             :string
#  visit_count            :integer
#  status                 :string
#  notion                 :string
#  permission_level       :integer          default("1")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Mandar a llamar a permisions level
  include PermissionsConcern
end
