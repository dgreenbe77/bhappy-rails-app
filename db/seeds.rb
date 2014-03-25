Seeders::QuestionSeeder.seed

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

# require 'csv'

# data = Rails.root + 'db/data/sales.csv'

# CSV.foreach(data, headers: true) do |row|
#   Sale.find_or_create_by(invoice_no: row['invoice_no']) do |sale|
#     sale.employee = row['employee']
#     sale.customer_and_account_no = row['customer_and_account_no']
#     sale.product_name = row['product_name']
#     sale.sale_date = Chronic.parse(row['sale_date'])
#     sale.sale_amount = row['sale_amount'].gsub('$','')
#     sale.units_sold = row['units_sold']
#     sale.invoice_no = row['invoice_no']
#     sale.invoice_frequency = row['invoice_frequency']

#     puts "Sale with invoice no. #{sale.invoice_no} processed"
#   end
# end

# def seed_with_csv(file_name, model)
#   route = Rails.root + 'db/data/#{file_name}'

#   CSV.foreach(route, headers: true) do |row|
#     model.find_or_create_by(questions: row['questions']) do |data|
#       data.questions = row['questions']
#       data.anwsers = row['anwsers']
#     end
#   end
# end

# seed_with_csv('happy', Happinesses)







