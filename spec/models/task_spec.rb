require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
    #test laundry? will return true when title or description includes the word laundry
      it "should return true when title is equivalent to 'laundry'" do
        #arrange - set up data
        task = Task.create!(title: "laundry", description: "Clean your clothes")
        # .create = .new + .save

        #act - do something: call method // WHEN
        #assert - make expect statements // THEN
        expect(task.laundry?).to be true
      end
      it "returns true when description is laundry" do
        task = Task.create!(title: "Clean", description: "laundry")
        expect(task.laundry?).to be true
      end
      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "Cooking", description: "Meal Prep")
        expect(task.laundry?).to be false
      end
      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "something laundry", description: "Clean your clothes")
        expect(task.laundry?).to be true
      end
      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "something Laundry", description: "Clean your clothes")
        expect(task.laundry?).to be true
      end
      it "returns true when the description contains the word laundry" do
        task = Task.create!(title: "Clean", description: "something laundry")
        expect(task.laundry?).to be true
      end
      it "is case insensitive when checking if the description contains the word laundry" do
        task = Task.create!(title: "Clean", description: "something laundry")
        expect(task.laundry?).to be true
      end
    end
  end
end
