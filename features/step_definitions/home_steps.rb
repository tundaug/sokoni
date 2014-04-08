Given(/^I visit the home page$/) do
    visit "/"
end
Given(/^I have ten posts$/) do
    (1..10).to_a.each{|index|
        @post = Post.new :title => "post %d" % index, :content => "content %d" % index
        @post.save
    }
end

Then(/^I should see the posts listed$/) do
    (1..10).to_a.each{|index|
        expect(page).to have_content "post %d" % index
        expect(page).to have_content "content %d" % index 
    }
end
