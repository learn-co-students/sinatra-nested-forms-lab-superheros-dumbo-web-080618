class Hero

  attr_reader :heroname, :power, :bio

  HEROS = []

  def initialize(params)
    @heroname = params[:heroname]
    @power = params[:power]
    @bio = params[:bio]
    HEROS << self
  end

  def self.all
    HEROS
  end

end
