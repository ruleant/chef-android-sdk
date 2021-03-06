default['android-sdk']['name']           = 'android-sdk'
default['android-sdk']['owner']          = 'root'
default['android-sdk']['group']          = 'root'
default['android-sdk']['setup_root']     = nil  # ark defaults (/usr/local) is used if this attribute is not defined

default['android-sdk']['version']        = '22.6.2'
default['android-sdk']['checksum']       = 'f87e1bb207783a8b7d59775dcd3a8a2828034787860e44c99a9aefebdf7cb28f'
default['android-sdk']['download_url']   = "http://dl.google.com/android/android-sdk_r#{node['android-sdk']['version']}-linux.tgz"

#
# List of Android SDK components to preinstall:
# Selection based on
# - Platform usage statistics (see http://developer.android.com/about/dashboards/index.html)
# - Build Tools releases: http://developer.android.com/tools/revisions/build-tools.html
#
# Hint:
# Add 'tools' to the list below if you wish to get the latest version,
# without having to adapt 'version' and 'checksum' attributes of this cookbook.
# Note that it will require (waste) some extra download effort.
default['android-sdk']['components']     = %w(platform-tools
                                              build-tools-19.1.0
                                              android-19
                                              sysimg-19
                                              android-18
                                              sysimg-18
                                              android-17
                                              sysimg-17
                                              android-16
                                              sysimg-16
                                              android-15
                                              sysimg-15
                                              android-10
                                              extra-android-support
                                              extra-google-google_play_services
                                              extra-google-m2repository
                                              extra-android-m2repository)

default['android-sdk']['license']['white_list']     = %w(android-sdk-license-.+ intel-.+)
default['android-sdk']['license']['black_list']     = []    # e.g. ['mips-.+', 'android-wear-sdk-license-.+']
default['android-sdk']['license']['default_answer'] = 'n'   # 'y' or 'n' ('yes' or 'no')

default['android-sdk']['scripts']['path']          = '/usr/local/bin'
default['android-sdk']['scripts']['owner']         = node['android-sdk']['owner']
default['android-sdk']['scripts']['group']         = node['android-sdk']['group']

default['android-sdk']['maven-rescue']             = false
