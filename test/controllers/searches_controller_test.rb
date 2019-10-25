require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
    describe 'Route to view' do
        it 'has an home page' do
          visit home_path
          expect(page.status_code).to eq(200)
        end
      end
end
