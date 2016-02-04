#
# Copyright 2016 YOUR NAME
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These options are required for all software definitions
name "berkshelf-api"
default_version "2.1.1"
gem_deps = {
 'http' => '0.8.12',
 'activesupport' => '4.2.1',
 'celluloid' => '0.16.0',
 'celluloid-io' => '0.16.2',
 'rack' => '1.6.1',
 'reel' => '0.5.0',
 'ridley' => '4.0.0',
 'berkshelf-api' => '2.1.1'
}


build do
  gem_deps.each do |key,value|
    gem "install #{key} -v #{value}"
  end
end
