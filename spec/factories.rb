# FactoryBot.define do
#     service_array = ["Test Service", "Test Service Two"]
#     factory :random_user, class: User do
#         user { Faker::Lorem.user}
#         password_digest { Faker::Lorem.password_digest}
#     end
# end

# # FactoryBot.define do
# #     service_array = ["Test Service", "Test Service Two"]
# #     letter = ["a", "b", "c", "d"]
# #   factory :random_question, class: Question do
# #       question { Faker::Lorem.question }
# #       answer { Faker::Lorem.sentence }
# #       service { service_array.sample }
# #       number { Faker::Number.between(1, 2) }
# #       letter { letter.sample }
# #     end
# # end