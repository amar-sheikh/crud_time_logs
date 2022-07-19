require 'rails_helper'

RSpec.describe 'Time Logs', type: :system do
  before { driven_by :rack_test }

  context 'Viewing Time Logs' do
    let!(:logs) { TimeLog.create([
      {duration_hours: 1, description: 'Initial Task', status: TimeLog::STATUS_BILLED}, 
      {duration_hours: 3, description: 'Follow up Task'},
      ]) }
    it 'lists all time logs' do
      visit '/time_logs'
      
      expect(table_to_structure(page, 'table')).to eq([
        {"Duration (Hours)" => '1', "Description" => "Initial Task", "Status" => "billed"},
        {"Duration (Hours)" => '3', "Description" => "Follow up Task", "Status" => "pending"},
      ])
      expect(page.status_code).to eq(200)
    end

    # convert an html table into an array of hashes where the keys are the table headers and values are the values of the table
    def table_to_structure(page, root_selector)
      table_root = page.find(root_selector)
      headers = table_root.find_all('thead th').map { |n| n.text }.filter { |n| !n.empty? }
      table_root.find_all('tbody tr').map do |row|
        row.find_all('td').map { |n| n.text }.filter { |n| !n.empty? }
      end
      .map do |row|
        Hash[headers.zip(row)]
      end 
    end
  end
end