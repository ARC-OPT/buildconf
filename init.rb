# Write in this file customization code that will get executed before 
# autoproj is loaded.

# Set the path to 'make'
# Autobuild.commands['make'] = '/path/to/ccmake'

# Set the parallel build level (defaults to the number of CPUs)
# Autobuild.parallel_build_level = 10

# Uncomment to initialize the environment variables to default values. This is
# useful to ensure that the build is completely self-contained, but leads to
# miss external dependencies installed in non-standard locations.
#
# set_initial_env
#
# Additionally, you can set up your own custom environment with calls to env_add
# and env_set:
#
# env_add 'PATH', "/path/to/my/tool"
# env_set 'CMAKE_PREFIX_PATH', "/opt/boost;/opt/xerces"
# env_set 'CMAKE_INSTALL_PATH', "/opt/orocos"
#
# NOTE: Variables set like this are exported in the generated 'env.sh' script.
#

require 'autoproj/gitorious'

Autoproj.gitorious_server_configuration('GITHUB', 'github.com', :http_url => 'https://github.com')
Autoproj.gitorious_server_configuration('DFKIGIT', 'git.hb.dfki.de', :http_url => 'https://git.hb.dfki.de')

#env_set 'RTT_IGNORE_EXCEPTION', 'true'

#Purge envirment variable first
#env_set 'MONSTER_FRAME_NAMES', ''
    
#def add_monster_system(robot_name,filename,package)
#    f_name = File.join(Autoproj.root_dir,"install","configuration",filename)
#    env_add 'MONSTER_FRAME_NAMES' , "#{robot_name},#{f_name},#{package}"
#end


# namespace mantis is already used so do not call the robot mantis!
#add_monster_system("Mantis","mantis_monster/FramesCombined.xml","limes/mantis_monster")
#add_monster_system("Spaceclimber","spaceclimber_monster/FramesCombined.xml","limes/spaceclimber_monster")

#Autoproj.change_option('ROCK_FLAVOR', 'master')

#Autobuild::Orogen.always_regenerate = false
Autobuild.env_set 'LC_NUMERIC','C'

# work around for base/orogen/types, in flavor stable, since it depends on tools/orogen_metadata, 
# which is only in flavor master currently
Autobuild.env_set 'ROCK_DISABLE_CROSS_FLAVOR_CHECKS', '1'
