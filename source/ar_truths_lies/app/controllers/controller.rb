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
    Student.all.shuffle
    current_student = Student.all[count]

    until current_student.id == Student.all.length 
        View.display_student(current_student)

        View.display_mc(displayChoices(current_student))
        answer = check_answer(gets.chomp)
        if answer == true
          View.true
          count += 1 
          current_student = Student.all[count]
        elsif answer == false
          View.false
          # count += 1 
          current_student = Student.all[count]
        end
    end

    puts "Game over."

        #should break the loop and exit console

  end


  def displayChoices(student)
    options = []

    options << student.lie
    student.truths.each do |truth|
      options << truth
    end

    options.shuffle

    @mc_hash["A"] = options[0]
    @mc_hash["B"] = options[1]
    @mc_hash["C"] = options[2]

  
    return @mc_hash
  end

  def check_answer(letter)
  
    if @mc_hash[letter].class == Lie
      return true
    elsif @mc_hash[letter].class == Truth
      return false
    else
      return "you can't do that"
    end

  end


  end

