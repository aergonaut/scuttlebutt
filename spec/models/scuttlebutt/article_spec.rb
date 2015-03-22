require 'rails_helper'

module Scuttlebutt
  RSpec.describe Article, type: :model do
    subject(:article) { FactoryGirl.build :article }

    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }

    describe ".published" do
      let!(:published_article) { FactoryGirl.create :published_article }
      let!(:unpublished_article) { FactoryGirl.create :article }

      subject { Scuttlebutt::Article.published }

      it { is_expected.to include(published_article) }
      it { is_expected.to_not include(unpublished_article) }
    end

    describe "#publish!" do
      before { article.save! }

      it "marks published_at to the current time in UTC" do
        Timecop.freeze do
          expect { article.publish! }.to change { article.published_at }.to(Time.now.utc)
        end
      end
    end

    describe "#published?" do
      before { article.save }

      subject { article.published? }

      context "when the article has not been published" do
        before do
          article.published_at = nil
          article.save!
        end

        it { is_expected.to be_falsey }
      end
      
      context "when the article has been published" do
        before { article.publish! }

        it { is_expected.to be_truthy }
      end
    end
  end
end
