class Racetrack
  def initialize(racebikes)
    @racebikes = racebikes
  end
  
  def empty?
    @racebikes == 0
  end
  
  def mood
    'boring'
  end
end