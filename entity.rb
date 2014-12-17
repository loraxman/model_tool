require 'grape-entity'
module MetaData

    class EntityAPI < Grape::Entity
      expose :name
    
    end
    class Entity 
      attr_accessor :name
    end

         
    class Column
      attr_accessor :name
    end

end
