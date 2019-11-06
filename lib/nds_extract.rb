$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  hash = {}
  dirs = 0
  while dirs < nds.count do
    earnings = 0
    movs = 0
    while movs < nds[dirs][:movies].count
      earnings += nds[dirs][:movies][movs][:worldwide_gross]
      movs += 1
    end
    hash[nds[dirs][:name]] = earnings
    dirs += 1
  end
  hash
end
