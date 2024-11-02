# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `macaddr` gem.
# Please instead update this file by running `bin/tapioca gem macaddr`.


# source://macaddr//lib/macaddr.rb#26
module Mac
  class << self
    # Discovers and returns the system's MAC addresses.  Returns the first
    # MAC address, and includes an accessor #list for the remaining addresses:
    #
    #   Mac.addr # => first address
    #   Mac.addr.list # => all addresses
    #
    # Shorter alias for #address
    #
    # source://macaddr//lib/macaddr.rb#59
    def addr; end

    # Discovers and returns the system's MAC addresses.  Returns the first
    # MAC address, and includes an accessor #list for the remaining addresses:
    #
    #   Mac.addr # => first address
    #   Mac.addr.list # => all addresses
    #
    # source://macaddr//lib/macaddr.rb#59
    def address; end

    # source://macaddr//lib/macaddr.rb#33
    def dependencies; end

    # source://macaddr//lib/macaddr.rb#39
    def description; end

    # source://macaddr//lib/macaddr.rb#82
    def from_getifaddrs; end

    # Accessor for the system's first MAC address, requires a call to #address
    # first
    #
    # source://macaddr//lib/macaddr.rb#50
    def mac_address; end

    # Accessor for the system's first MAC address, requires a call to #address
    # first
    #
    # source://macaddr//lib/macaddr.rb#50
    def mac_address=(_arg0); end

    # source://macaddr//lib/macaddr.rb#109
    def parse(output); end

    # source://macaddr//lib/macaddr.rb#29
    def version; end
  end
end

# source://macaddr//lib/macaddr.rb#130
Mac::RE = T.let(T.unsafe(nil), Regexp)

# source://macaddr//lib/macaddr.rb#27
Mac::VERSION = T.let(T.unsafe(nil), String)

# source://macaddr//lib/macaddr.rb#133
MacAddr = Mac

# source://macaddr//lib/macaddr.rb#133
Macaddr = Mac
