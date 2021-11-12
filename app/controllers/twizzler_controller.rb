class TwizzlerController < ApplicationController
  def candyshop
    render plain: "hello"
  end

  def rolldice
    sides = params["sides"].to_i
    number_of_rolls = params["number"].to_i
    number = 0
    (0...number_of_rolls).each do |i|
      number += rand(1..sides)
    end
    render plain: number
  end

  def showform
  end

  def pokefolkform
  end

  def pokedatabase
    my_new_pokemon = Pokeman.new
    my_new_pokemon.name = params["name"]
    my_new_pokemon.subtype = params["type"]
    my_new_pokemon.deliciousness = params["deliciousness"]
    my_new_pokemon.save
    redirect_to "/pokedesk"
  end

  def pokedesk
    @all_pokes = Pokeman.all
  end




  def home
    @chapters = Chapter.all
  end

  def entry
  end

  def count
    new_entry = Chapter.new
    new_entry.title = params["title"]
    new_entry.body = params["body"]
    @count = new_entry.body.split.count
    new_entry.save
    redirect_to "/home"
  end

  def show
    @chapter = Chapter.find(params[:id])
  end
end
