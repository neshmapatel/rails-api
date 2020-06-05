# $server = create do
#     get('/') { "Hello" }
#   end
  
#   def make_http_request
#     Net::HTTP.get_response('localhost', '/', $server.port).body
#   end
  
#   require 'spec_helper'
  
#   describe "VCR example group metadata", :vcr do
#     it 'records an http request' do
#       expect(make_http_request).to eq('Hello')
#     end
  
#     it 'records another http request' do
#       expect(make_http_request).to eq('Hello')
#     end
  
#     context 'in a nested example group' do
#       it 'records another one' do
#         expect(make_http_request).to eq('Hello')
#       end
#     end
#   end
  
#   describe "VCR example metadata" do
#     it 'records an http request', :vcr do
#       expect(make_http_request).to eq('Hello')
#     end
#   end