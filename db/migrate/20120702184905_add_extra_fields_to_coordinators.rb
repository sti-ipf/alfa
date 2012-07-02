class AddExtraFieldsToCoordinators < ActiveRecord::Migration
  def self.up
    add_column :coordinators, :literacy_exp, :text
    add_column :coordinators, :literacy_availability, :text
    add_column :coordinators, :can_travel, :boolean
    add_column :coordinators, :literacy_justify, :text
    add_column :coordinators, :anytime_literacy, :text
    add_column :coordinators, :teach_what, :text
    add_column :coordinators, :all_in_same_room, :text
    add_column :coordinators, :study_content, :text
    add_column :coordinators, :comunity_need_class, :text
    add_column :coordinators, :organize_class, :text
    add_column :coordinators, :computer_knowledge, :integer
    add_column :coordinators, :computer_uses, :integer
    add_column :coordinators, :computer_target, :integer
    add_column :coordinators, :internet_home, :integer
    add_column :coordinators, :email_read, :integer
    add_column :coordinators, :social_network_know, :integer
    add_column :coordinators, :social_network_use, :integer
    add_column :coordinators, :social_network, :integer
    add_column :coordinators, :another_social_network, :string
    add_column :coordinators, :has_msn, :integer
    add_column :coordinators, :msn_use, :integer
    add_column :coordinators, :blog_status, :integer
    add_column :coordinators, :ead, :integer
    add_column :coordinators, :obs, :text
  end

  def self.down
    remove_column :coordinators, :obs
    remove_column :coordinators, :ead
    remove_column :coordinators, :blog_status
    remove_column :coordinators, :msn_use
    remove_column :coordinators, :has_msn
    remove_column :coordinators, :another_social_network
    remove_column :coordinators, :social_network
    remove_column :coordinators, :social_network_use
    remove_column :coordinators, :social_network_know
    remove_column :coordinators, :email_read
    remove_column :coordinators, :internet_home
    remove_column :coordinators, :computer_target
    remove_column :coordinators, :computer_uses
    remove_column :coordinators, :computer_knowledge
    remove_column :coordinators, :organize_class
    remove_column :coordinators, :comunity_need_class
    remove_column :coordinators, :study_content
    remove_column :coordinators, :all_in_same_room
    remove_column :coordinators, :teach_what
    remove_column :coordinators, :anytime_literacy
    remove_column :coordinators, :literacy_justify
    remove_column :coordinators, :can_travel
    remove_column :coordinators, :literacy_availability
    remove_column :coordinators, :literacy_exp
  end
end
