require 'spec_helper'

describe Upload do
  let(:upload) { FactoryGirl.build :upload }
  describe "validations" do
    it { should validate_presence_of :filename }
    it { should validate_presence_of :ext }
    it { should validate_presence_of :content_type }
    it { should validate_presence_of :data }
    context "when parameters is #{FactoryGirl.attributes_for(:upload).to_s}" do
      it { expect(upload).to be_valid }
    end
  end

  describe "#encrypt" do
    it "should accept encrypt before save" do
      expect(upload).to receive(:encrypt).and_return(true)
      upload.save
    end
  end
end
