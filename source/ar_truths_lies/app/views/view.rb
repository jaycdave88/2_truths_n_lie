class View

  def self.welcome
    puts  "\n\nYou THINK you know..... \nbut you have NO fucking idea... \nHow well do you know your fellow classmates?!\n\n"
  end

  def self.help
     puts  "\nFigure the fuck out!! \nIts just a game... not the rocket science.\n"
  end

  def self.quit
     puts "\nAre you a fucking quitter? \nBitch.\n\n"
  end

  def self.display_student(student)
    puts "\n#{student.first_name} #{student.last_name}\n"
  end

  def self.display_mc(option_hash)
    option_hash.each {|key,value| puts "\n#{key}: #{value.description}\n"}
  end

  def self.true
    puts "\n\nGood fucking job!\nYou did something right for once.\n"
  end

  def self.false
    puts "\n\nSuprise suprise...\nYou're Wrong!\n...again.\n"
  end


end