class Search
  def initialize(args = {})
    @options = args.fetch(:options, {})
    @model   = args.fetch(:model, args[:model_name])
  end

  def perform
    @options.keys.inject(@model.all) do |collection, option|
      type_for(option).run(collection: collection, option: option, value: @options[option])
    end
  end

  private

  def type_for(option)
    type = @model.columns_hash[option.to_s].type.to_s.capitalize
    "Search::#{type}Search".constantize
  end

  class DefaultSearch
    def self.run(collection:, option:, value:)
      value.present? ? collection.send("with_#{option}", value) : collection
    end
  end

  class StringSearch < DefaultSearch
  end

  class TextSearch < DefaultSearch
  end

  class IntegerSearch < DefaultSearch
  end

  class BooleanSearch
    def self.run(collection:, option:, value:)
      value == '1' ? collection.send("with_#{option}") : collection
    end
  end
end
