puts "The purpose here is to display values according to expectations"

UserAttributeValue.destroy_all
UserAttribute.destroy_all
User.destroy_all

puts "seeding"
martin = User.create!(email: "martin@mail.com", password: "secret", admin: false)
donor = UserAttribute.create!(
  name: "donor",
  data_type: "boolean",
  required: false,
  profile: true,
  signup: false
)
description = UserAttribute.create!(
  name: "description",
  data_type: "text",
  required: true,
  profile: true,
  signup: false
)
age = UserAttribute.create!(
  name: "age",
  data_type: "text",
  required: true,
  profile: true,
  signup: false
)
credit_card_number = UserAttribute.create!(
  name: "credit card number",
  data_type: "text",
  required: true,
  profile: false,
  signup: true
)
UserAttributeValue.create!(value: "true", user_id: martin.id, user_attribute_id: donor.id)
UserAttributeValue.create!(value: "very long user description", user_id: martin.id, user_attribute_id: description.id)
UserAttributeValue.create!(value: "56", user_id: martin.id, user_attribute_id: age.id)

UserAttributeValue.create!(value: "1212 1212 1212 1212", user_id: martin.id, user_attribute_id: credit_card_number.id)

def display_values
  User.all.each do |user|
    p "User : #{user.email} has the following profile : "
    p ">   "

    UserAttribute.profile.each do |user_attribute|
      user_attribute.user_attribute_values.each do |user_attribute_value|
        if user.id == user_attribute_value.user_id
          p "#{user_attribute.name} : #{user_attribute_value.value}"
        end
      end
    end

    p "... and the following signup"

    UserAttribute.signup.each do |user_attribute|
      user_attribute.user_attribute_values.each do |user_attribute_value|
        if user.id == user_attribute_value.user_id
          p "#{user_attribute.name} : #{user_attribute_value.value}"
        end
      end
    end
  end
end

display_values
