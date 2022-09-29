require './constants'
require 'yaml'
require 'json'

z = ENV['Z'].to_i
spacing = (BASE ** (Z_ONE_METER - z)).to_f
basename = ENV['BASENAME']
src_path = "#{TL_DIR}/#{basename}.laz" #unless File.exist?(src_path)
dst_path = "#{TMP_DIR}/#{basename}-#{z}.las"
$stderr.print "#{spacing}m for #{dst_path} from #{src_path}\n"

pipeline = <<-EOS
pipeline: 
  - 
    filename: #{src_path}
    type: readers.las
  -
    type: filters.voxelcenternearestneighbor
    cell: #{spacing}
  -
    type: writers.text
    format: csv
    filename: STDOUT
EOS

print JSON.dump(YAML.load(pipeline))