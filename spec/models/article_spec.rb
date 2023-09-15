require "rails_helper" #  подключение

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем объект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(artticle.subject).to eq 'Lorem Ipsum'

    end  
  end
end