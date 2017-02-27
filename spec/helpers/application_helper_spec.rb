require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe :bootstrap_class_for do

    context 'flash type success' do
      it 'should return allert-success' do
        expect(bootstrap_class_for("success")).to eq("alert-success")
      end
    end

    context 'flash type error' do
      it 'should return allert-success' do
        expect(bootstrap_class_for("error")).to eq("alert-danger")
      end
    end

    context 'flash type alert' do
      it 'should return allert-success' do
        expect(bootstrap_class_for("alert")).to eq("alert-warning")
      end
    end

    context 'flash type notice' do
      it 'should return allert-success' do
        expect(bootstrap_class_for("notice")).to eq("alert-info")
      end
    end

    context 'flash type random-words' do
      it 'should return allert-success' do
        expect(bootstrap_class_for("random-words")).to eq("random-words")
      end
    end
  end
end
