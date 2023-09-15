require "rails_helper" #  подключение

describe Comment do
  it { should belong_to :article }
end