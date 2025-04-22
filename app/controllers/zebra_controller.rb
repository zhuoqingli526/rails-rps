class ZebraController < ActionController::Base
  def rock
    @random_move = ["rock","paper","scissors"].sample

    if @random_move == "rock"
      @results = "We tied!"
    
    elsif @random_move == "paper"
      @results = "We lost!"

    else @random_move == "scissors"
      @results = "We won!"
    end

    render({ :template => "game_templates/play_rock" })
  end

  def paper
    @random_move = ["rock","paper","scissors"].sample
    if @random_move == "rock"
      @results = "We won!"
    
    elsif @random_move == "paper"
      @results = "We tied!"

    else @random_move == "scissors"
      @results = "We lost!"
    end
    
    render({ :template => "game_templates/play_paper" })
  end

  def scissors
    @random_move = ["rock","paper","scissors"].sample

    if @random_move == "rock"
      @results = "We lost!"
    
    elsif @random_move == "paper"
      @results = "We won!"

    else @random_move == "scissors"
      @results = "We tied!"
    end

    render({ :template => "game_templates/play_scissors" })
  end

  def rules
    render({ :template => "game_templates/rules" })
  end
end
