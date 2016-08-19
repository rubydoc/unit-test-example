require 'rails_helper'

RSpec.describe Guy, :type => :service do
  describe '#give_my_number_to girl' do
    context "when a beutiful girl asks me" do
      let(:me) { Guy.new }
      
      it "should return my phone number" do
        expect(me.give_my_number_to :beatiful_girl).to eq "010-5585-0440"
      end
    end
  end
end
