class Session < ApplicationRecord
    def self.sweep(time = 1.hour)
      where("updated_at < ? OR created_at < ?", time.ago.to_fs(:db), 2.days.ago.to_fs(:db)).delete_all
    end
  end