require 'spec_helper'

describe Upload do
  describe "validations" do
    it { validates_presence_of :filenmae }
    it { validates_presence_of :ext }
    it { validates_presence_of :data }
  end
end
