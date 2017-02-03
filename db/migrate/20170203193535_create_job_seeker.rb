class CreateJobSeeker < ActiveRecord::Migration[5.0]
  def change
    create_table :job_seekers do |t|
      t.belongs_to :user, null: false
    end
  end
end
