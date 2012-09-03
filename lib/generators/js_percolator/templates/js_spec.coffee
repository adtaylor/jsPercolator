#=require plugins/<%= folder_path %>tbg-<%= file_name.underscore %>

describe '<%= file_name.camelize %>:', ->
  beforeEach ->
      loadFixtures "plugins/tbg-<%= file_name.underscore %>_fixture"

  describe 'A Test', ->
    it 'should pass', ->
      h2 = $('h2')
      expect(h2.text()).toEqual "<%= file_name.camelize %> Test  Fixture"
