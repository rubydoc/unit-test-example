require 'rails_helper'

RSpec.describe PhoneNumber, :type => :service do
  describe '#to_formatted' do
    let(:country) { "+82" }
    
    context "when receiving the mobile number '010xxxxxxxx'" do
      let(:phone_number) { PhoneNumber.new("01012345678", country) }
      
      it "should return '010-xxxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "010-1234-5678"
      end
    end
    
    context "when receiving the mobile number '011xxxxxxx'" do
      let(:phone_number) { PhoneNumber.new("0111234567", "+82") }
      
      it "should return '011-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "011-123-4567"
      end
    end
    
    context "when receiving the local number '0311234567'" do
      let(:phone_number) { PhoneNumber.new("0311234567", "+82") }
      
      it "should return '031-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "031-123-4567"
      end
    end
    
    context "when receiving the local number '03112345678'" do
      let(:phone_number) { PhoneNumber.new("03112345678", "+82") }
      
      it "should return '031-xxxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "031-1234-5678"
      end
    end
  end
  
end
