# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Politician.destroy_all
Quote.destroy_all

require_relative "politician_data"
require_relative "quote_data"

quote_data = get_quote_data()
politician_data = get_politician_data()

quote_data.each_pair do | politician_name, quotes|
  info = politician_data[politician_name.to_sym]
  current_politician = Politician.create!({
    name:           info[:name],
    photo_url:      info[:photo_url],
    party:          info[:party],
    state:          info[:state],
    current_office: info[:current_office],
    running_for:    info[:running_for],
    elect_date:     info[:elect_date]
    })

    quotes.each do |quote|
      Quote.create!({
        source:            info[:source],
        quote_date:        info[:quote_date],
        fact_check_rating: info[:fact_check_rating],
        direct_quote:      info[:direct_quote],
        politician:        current_politician
        })
      end
    end


    # trump = Politician.create(name: "Donald Trump", party:"Republican", state:"New York", current_office:"", running_for:"President", photo_url:"http://www.travelandleisure.com/sites/default/files/styles/1600x1000/public/trump0715.jpg?itok=ZOEWi1UB" elect_date:20161108)
    # cruz = Politician.create(name: "Ted Cruz", party:"Republican", state:"Texas", current_office:"Senate", running_for:"President" photo_url:"http://www.gannett-cdn.com/-mm-/cfd2949a6bc4f7e98cc6a3fae3f80d64a910519e/c=0-159-4926-2942&r=x1683&c=3200x1680/local/-/media/2015/06/27/USATODAY/USATODAY/635710194244161615-XXX-CAPITAL-DOWNLOAD-SEN.-TED-CRUZ-JMG-40121-74074276.JPG", elect_date:20161108)
    # clinton = Politician.create(name: "Hillary Clinton", party:"Democrat", state:"New York", current_office:"", running_for:"President", photo_url:"" elect_date:20161108)
    # sanders = Politician.create(name: "Bernie Sanders", party:"Democrat", state:"Vermont", current_office:"Senate", running_for:"President", photo_url:"" elect_date:20161108)
    # kasich = Politician.create(name: "Bernie Sanders", party:"Republican", state:"Ohio", current_office:"Governor", running_for:"President", photo_url:"" elect_date:20161108)
    # gwen_moore = Politician.create(name: "Gwen Moore", party:"Democrat", state:"Wisconsin", current_office:"Representative", running_for:"Representative", photo_url:"" elect_date:20161108)
