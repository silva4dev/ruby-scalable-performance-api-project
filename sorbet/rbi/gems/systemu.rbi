# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/systemu/all/systemu.rbi
#
# systemu-2.6.5

class Object < BasicObject
  def systemu(*a, &b); end
end
class SystemUniversal
  def child_program(config); end
  def child_setup(tmp); end
  def getopts(opts = nil); end
  def initialize(argv, opts = nil, &block); end
  def new_thread(child_pid, block); end
  def quietly; end
  def quote(*args, &block); end
  def relay(srcdst); end
  def self.description; end
  def self.host; end
  def self.host=(arg0); end
  def self.pid; end
  def self.pid=(arg0); end
  def self.ppid; end
  def self.ppid=(arg0); end
  def self.quote(*words); end
  def self.ruby; end
  def self.turd; end
  def self.turd=(arg0); end
  def self.version; end
  def slug_for(*args); end
  def systemu; end
  def tmpdir(d = nil, max = nil, &b); end
  def version; end
end
