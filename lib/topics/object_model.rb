# frozen_string_literal: true

# exercise object model
module ObjectModel
  # class desctop
  class Desktop
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end

  # module linux friendly
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # new class Leptop
  class Laptop < Desktop
    prepend LinuxFriendly
  end
end
