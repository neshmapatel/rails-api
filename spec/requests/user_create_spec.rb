require "spec_helper"
describe User do
    let(:user) {User.create} 
    describe "#create" do
        it "creates user" do
            VCR.use_cassette("cassettes", :record => :new_episodes) do
                      response = Net::HTTP.get_response(URI('http://www.iana.org/domains/reserved'))
                    #   assert_match /Example domains/, response.body

                # user = user.create("neshma")
                expect(user.username).to eq(nil) 
            end
        end
        # it 'records http request' do
        #     expect(index).to eq('')
        # end
    end
    describe "#index" do
        it "shows user" do
            VCR.use_cassette("cassettes") do
                response = Net::HTTP.get_response(URI('http://www.iana.org/domains/reserved'))
                # assert_match /Example domains/, response.body

          # user = user.create("neshma")
          expect(user.username).to eq(nil) 
      end
        end
        
    end
end

