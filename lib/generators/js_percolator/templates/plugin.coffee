# ============================================================
# TBG <%= file_name %> v0.0.1
# http://URL
# ============================================================
# Copyright <%= Time.new.year %> The Beans Group
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

plugin = ($)->

  "use strict"  

  # <%= file_name.upcase %> CLASS DEFINITION
  # ========================= 
  class <%= file_name.camelize %> 
    constructor: ( element ) ->
      $el = $(element)
  
    _constructor:  <%= file_name.camelize %>
  
    method : ->
      alert "I am a method"
  
  # <%= file_name.upcase %> PLUGIN DEFINITION
  # ==========================
  
  $.fn.<%= file_name.camelize(:lower) %> = ( option ) ->
    this.each ->
      $this = $(@)
      data = $this.data '<%= file_name.camelize(:lower) %>Plugin'
      if !data then $this.data '<%= file_name.camelize(:lower) %>Plugin', (data = new <%= file_name.camelize %> @)
      if typeof option is 'string' then data[option].call $this
  
  $.fn.<%= file_name.camelize(:lower) %>.Constructor = <%= file_name.camelize %>
  
  
  # DATA API
  # ===================================
  
  $ ->
    $('body').on 'click.<%= file_name.camelize(:lower) %>.data-api', '[data-<%= file_name.camelize(:lower) %>Action^=Action]', ( e ) ->
      $(e.target).<%= file_name.camelize(:lower) %>()

do ( plugin ) ->
  if typeof define is 'function' and define.amd
    # AMD. Register as an anonymous module.
    define(['jquery'], plugin);
  else
    # Browser globals
    plugin(jQuery)
