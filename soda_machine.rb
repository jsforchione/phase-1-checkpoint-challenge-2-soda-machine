class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
    #or @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.detect { |soda| soda.brand == soda_brand }
    # can also use .find for above solution 

    # @sodas.each do |soda|
    #   if soda.brand == soda_brand 
    #     soda
    #   end 
    # end 
    # nil 
  end

  def sell(soda_brand)
    sold_soda = find_soda(soda_brand)

    return nil if sold_soda == nil 
    # return nil if !sold_soda 
    # !sold_soda is a falsey value 
    # above is better (shorter) solution

    @cash += sold_soda.price 
    @sodas.delete(sold_soda)

  end

end
