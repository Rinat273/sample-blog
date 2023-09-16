require "rails_helper" #  подключение

describe Comment do
  describe "associations" do
   it { should belong_to :article }
  end

  describe "validations" do
    it { should validate_length_of(:body).is_at_most(4000) }
  end
end