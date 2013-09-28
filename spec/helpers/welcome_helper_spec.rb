require 'spec_helper'

describe WelcomeHelper do
  describe "#title" do
    subject { helper.title }
    it { expect(subject).to eql "PecaUploader - Welcome !!" }
  end
end
