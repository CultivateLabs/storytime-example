# This migration comes from storytime (originally 20150302171722)
class SetSiteLayout < ActiveRecord::Migration
  def up
    Storytime::Migrators::V1.set_site_layout_and_subscription_email_from
  end

  def down
  end
end
