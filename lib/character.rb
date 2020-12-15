class Character

  def initialize(role)
    @role = role
  end

  def name
    @role[:name]
  end

  def actor
    @role[:actor]
  end

  def salary
    @role[:salary]
  end

end
