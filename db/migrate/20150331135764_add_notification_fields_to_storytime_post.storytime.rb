# This migration comes from storytime (originally 20150206205256)
class AddNotificationFieldsToStorytimePost < ActiveRecord::Migration
  def change
    add_column :storytime_posts, :notifications_enabled, :boolean, default: false
    add_column :storytime_posts, :notifications_sent_at, :datetime
  end
end
