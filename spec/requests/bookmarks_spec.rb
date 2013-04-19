require 'spec_helper'

describe "Bookmarks" do

	describe "Home page" do # tests index page content/structure
		before do
			visit root_path
		end
		it "should have the bookmarks table headings" do
			page.should have_selector('th', :text => 'URL')
			page.should have_selector('th', :text => 'Name')
			page.should have_selector('th', :text => 'Date Saved')
		end		
		it "should have the page heading" do
			page.should have_selector('h1', :text => 'Listing Bookmarks')
		end
		it "should have the page title" do
			page.should have_selector('title', :text => 'Listing Bookmarks')
		end
	end

	describe "New bookmark page" do # tests new page content/structure
		before do
			visit new_bookmark_path
		end
		it "should have the page heading" do
			page.should have_selector('h1', :text => 'New Bookmark')
		end
		it "should have the page title" do
			page.should have_selector('title', :text => 'New Bookmark')
		end
	end

end