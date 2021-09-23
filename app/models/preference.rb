class Preference < ApplicationRecord
  validates :color, presence: true

  belongs_to :user

  # broadcasts_to 'preferences', target: 'preferences'
  after_create_commit -> { broadcast_append_to user }
  after_update_commit -> { broadcast_replace_to user }
end
