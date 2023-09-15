require "rails_helper" #  подключение

describe Article do
  it { should have_many :comments }
end