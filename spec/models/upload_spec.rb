require 'spec_helper'

describe Upload do
  describe "validations" do
    subject { FactoryGirl.build(:upload) }

    shared_context "should not be valid" do
      it "" do should_not be_valid end
    end

    context "パラメータが設定されていれば" do
      it "検証が成功する" do should be_valid end
    end

    context "ファイル名が設定されていなければ" do
      before { subject.stub(:set_filename).and_return("") }
      include_context "should not be valid"
    end

    context "ファイル名に拡張子がなければ" do
      before { subject.stub(:set_filename).and_return(Forgery(:basic).text) }
      include_context "should not be valid"
    end

    context "拡張子が設定されていなければ" do
      before { subject.stub(:set_ext).and_return("") }
      include_context "should not be valid"
    end

    context "IPが設定されていなければ" do
      before { subject.ip = "" }
      include_context "should not be valid"
    end
  end
end
