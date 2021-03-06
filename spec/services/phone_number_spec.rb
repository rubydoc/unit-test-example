require 'rails_helper'

RSpec.describe PhoneNumber, :type => :service do
  describe '#to_formatted' do
    let(:country) { "ko" }
    
    context "when receiving the mobile number '010xxxxxxxx'" do
      let(:phone_number) { PhoneNumber.new("01012345678", country) }
      
      it "should return '010-xxxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "010-1234-5678"
      end
    end
    
    context "when receiving the mobile number '011xxxxxxx'" do
      let(:phone_number) { PhoneNumber.new("0111234567", country) }
      
      it "should return '011-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "011-123-4567"
      end
    end
    
    context "when receiving the local number '0311234567'" do
      let(:phone_number) { PhoneNumber.new("0311234567", country) }
      
      it "should return '031-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "031-123-4567"
      end
    end
    
    context "when receiving the local number '03112345678'" do
      let(:phone_number) { PhoneNumber.new("03112345678", country) }
      
      it "should return '031-xxxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "031-1234-5678"
      end
    end
    
    context "when receiving the local number '0212345678'" do
      let(:phone_number) { PhoneNumber.new("0212345678", country) }
      
      it "should return '02-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "02-1234-5678"
      end
    end
    
    context "when receiving the local number '021234567'" do
      let(:phone_number) { PhoneNumber.new("021234567", country) }
      
      it "should return '02-xxx-xxxx' format" do
        expect(phone_number.to_formatted).to eq "02-123-4567"
      end
    end
  end
  
end
