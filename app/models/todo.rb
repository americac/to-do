class Todo < ActiveRecord::Base
  def completed?
    completed_at?
  end

  def completed!
    touch :completed_at
  end

  def mark_incomplete!
    update_column :completed_at, nil
  end

end
