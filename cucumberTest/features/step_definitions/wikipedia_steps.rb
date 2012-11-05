#You have been given the outlines of all the code you need to write
#Some of the snippets have been written for you, you may need to
#refactor/fix then though :)

#TODO: Write step definitions

Given 'I am on the Wikipedia Home Page' do
    @browser.get('http://wikipedia.org')
end

Then /^the page title should be "(.+)"$/ do |title|
    pageTitle = @browser.find_element(:css, "title")
    assert(pageTitle.text == title)
end

Then /^I should see the following languages$/ do |table|
    lang_list = table.raw
    for i in 0..lang_list.length
        @assert(browser.find_element(:link_text, lang_list[i]))
    end
end
