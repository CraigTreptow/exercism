class Attendee
  def initialize(height)
    @height_in_cm = height
    @pass_id = nil
  end

  def height
    @height_in_cm
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
