class HumanPlayer < Player
  attr_accessor :weapon_level
  # initialise niveau d'arme
  def initialize(name)
    @weapon_level = 1
    super(name) # metre a jour le nombre de point de vie
    @life_point = 100
  end

  # affichage des stats
  def show_state
    puts "#{name} est a #{@life_point} point de vie et posséde une arme de niveau #{@weapon_level}"
  end

  # valeur de l'arme
  def compute_damage
    rand(1..6) * @weapon_level
  end

  # choix de garder ou nom l'arme
  def search_weapon
    weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{dice}"
    if dice > weapon_level
      @weapon_level = weapon
      puts 'Youhou ! elle est meilleure que ton arme actuelle : tu la prends.'
    else
      puts " M@*!$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  # phase de soin et plafond à 100
  def search_health_pack
    survival_kit = rand(1..6)
    if survival_kit == 1
      puts "Tu n'as rien trouvé... "

    elsif survival_kit == 6
      @life_point + 80 > 100 ? @life_point = 100 : life_point += 80
      puts 'Bravo, tu as trouvé un pack de +50 points de vie !'
    else
      @life_point + 50 > 100 ? @life_point = 100 : life_point += 50
      puts 'Bravo, tu as trouvé un pack de +50 points de vie !'
    end
  end
end
# binding.pry
# puts 'end of file'
