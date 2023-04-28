Then(/^the page with (.+) title should appear$/) do |page_title|
  expect(@current_page.header.page_title.text).to eq(page_title)
end