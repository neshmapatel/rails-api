# require 'rails_helper'
# describe "PUT /api/v1/users/:id" do
#     before(:each) do
#         @user = create(:random_question)
#     end
#     it 'updates a user' do
#         @new_user = Faker::Lorem.user
#         @new_password=Faker::Lorem.password_digest
#         put "/@user.id>api/v1/users/#{@user.id}", params: {user: @new_user, password_digest: @new_password }
#         expect(response.status).to eq(202)
#         expect(User.find(@user.id).user).to eq(@new_user)
#         expect(User.find(@user.id).password_digest).to eq(@new_password)
#     end
# end




# # require 'rails_helper'
# # describe "PUT /api/v1/questions/:id" do
# # before(:each) do
# #     @question = create(:random_question)
# #   end
# # it 'updates a question' do
# # @new_question = Faker::Lorem.question
# #     @new_answer = Faker::Lorem.sentence
# # put "/@question.id">api/v1/questions/#{@question.id}", params: {question: @new_question, answer: @new_answer}
# # expect(response.status).to eq(202)
# #     expect(Question.find(@question.id).question).to eq(@new_question)
# #     expect(Question.find(@question.id).answer).to eq(@new_answer)
# #   end
# # end