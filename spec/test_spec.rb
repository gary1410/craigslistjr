require 'spec_helper'



#Test Active Record
describe User do

  describe Post do
    it { should belong_to(:user)}
    it { should have_db_column(:title)}
    it { should have_db_column(:description)}
    it { should have_db_column(:replyto)}
    it { should have_db_column(:price)}
    it { should have_db_column(:street)}
    it { should have_db_column(:cross_street)}
    it { should have_db_column(:city)}
    it { should have_db_column(:state)}
    it { should have_db_column(:postal)}
  end

  describe User do
    it { should have_many(:posts) }
    it { should have_db_column(:email) }
    it { should have_db_column(:first_name) }
    it { should have_db_column(:last_name) }
    it { should have_db_column(:password) }
    it { should have_db_column(:username) }
  end

  #Testing models

  describe Post do
    it { should validate_uniqueness_of(:title)}
    it { should validate_uniqueness_of(:title).scoped_to(:user_id)}
    it { should validate_presence_of(:title)}
  end

  #Testing Controllers

  describe views do
    it { should render_template(:index) }
    it { should render_template(:login) }
    it { should render_template(:signup) }
  end
end
