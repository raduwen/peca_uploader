require 'spec_helper'

describe "visit /" do
  before { visit '/' }

  it { expect(page).to have_title("PecaUploader") }
  # it { expect(page).to have_content('Top Rate') }
  # it { expect(page).to have_content('Today') }
end
