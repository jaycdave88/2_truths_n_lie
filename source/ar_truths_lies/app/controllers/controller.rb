###CONTROLLER###

require_relative '../views/view'
require_relative '../../config/application'
require_relative '../models/Student'

class Controller

  def initialize
    @mc_hash = {}
  end

  def user_input(input)
    input_string = input[0]
    count = 0
    View.welcome
    current_student = Student.all[count]

    until current_student.id == Student.all.length || gets.chomp == "quit"

        View.display_student(current_student)

        View.display_mc(displayChoices(current_student))
        if check_answer(gets.chomp)
          View.true
          count += 1 
          current_student = Student.all[count]
        elsif !check_answer(gets.chomp) 
          View.false
          count += 1 
          current_student = Student.all[count]
        end
        
  
    end

    View.quit

        #should break the loop and exit console

  end


  def displayChoices(student)
    options = []

    options << student.lie
    student.truths.each do |truth|
      options << truth
    end


    @mc_hash["A"] = options[0]
    @mc_hash["B"] = options[1]
    @mc_hash["C"] = options[2]

  
    return @mc_hash
  end

  def check_answer(letter)
  
    @mc_hash[letter].class != Truth ? true : false

  end


  end

