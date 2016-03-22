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

# quote_data = get_quote_data()
# politician_data = get_politician_data()

donaldtrump = Politician.create(
                name: "Donald Trump",
                photo_url: "http://www.travelandleisure.com/sites/default/files/styles/1600x1000/public/trump0715.jpg?itok=ZOEWi1UB",
                party:"Republican",
                state:"New York",
                current_office:"",
                running_for:"President",
                elect_date:20161108)

tedcruz = Politician.create(
                name: "Ted Cruz",
                photo_url:"http://www.gannett-cdn.com/-mm-/cfd2949a6bc4f7e98cc6a3fae3f80d64a910519e/c=0-159-4926-2942&r=x1683&c=3200x1680/local/-/media/2015/06/27/USATODAY/USATODAY/635710194244161615-XXX-CAPITAL-DOWNLOAD-SEN.-TED-CRUZ-JMG-40121-74074276.JPG",
                party:"Republican",
                state:"Texas",
                current_office:"Senate",
                running_for:"President",
                elect_date:20161108)

hillaryclinton = Politician.create(
                name: "Hillary Clinton",
                photo_url: "http://b-i.forbesimg.com/tomwatson/files/2013/11/secretaryclintonheadshot.jpg",
                party:"Democrat",
                state:"New York",
                current_office:"",
                running_for:"President",
                elect_date:20161108)

berniesanders = Politician.create(
                name: "Bernie Sanders",
                photo_url: "http://www.gannett-cdn.com/-mm-/f879a8b913f18f6bde45e56ce3936ebca696bd89/c=0-235-4926-3018&r=x1683&c=3200x1680/local/-/media/2015/06/09/USATODAY/USATODAY/635694650061186432-XXX-CAPITAL-DOWNLOAD-SEN.-SANDERS-JMG-39235-73667404.JPG",
                party:"Democrat",
                state:"Vermont",
                current_office:"Senate",
                running_for:"President",
                elect_date:20161108)

johnkasich = Politician.create(
                name: "John Kasich",
                photo_url: "https://cmgddnohiopolitics.files.wordpress.com/2015/08/john-kasich.jpg",
                party:"Republican",
                state:"Ohio",
                current_office:"Governor",
                running_for:"President",
                elect_date:20161108)

gwenmoore = Politician.create(
                name: "Gwen Moore",
                photo_url: "http://www.dems.gov/wp-content/uploads/2013/08/MooreG-WI4D.jpg",
                party:"Democrat",
                state:"Wisconsin",
                current_office:"Representative",
                running_for:"Representative",
                elect_date:20161108)

elizabethwarren = Politician.create(
                name: ,
                photo_url: ,
                party: ,
                state: ,
                current_office: ,
                running_for: ,
                elect_date:)

paulryan = Politician.create(
                name: ,
                photo_url: ,
                party: ,
                state: ,
                current_office: ,
                running_for: ,
                elect_date:
                )

joebiden = Politician.create(
                name: ,
                photo_url: ,
                party: ,
                state: ,
                current_office: ,
                running_for: ,
                elect_date:
                )

mitchmcconnell = Politician.create(
              name: ,
              photo_url: ,
              party: ,
              state: ,
              current_office: ,
              running_for: ,
              elect_date:
              )

nancypelosi = Politician.create(
              name: ,
              photo_url: ,
              party: ,
              state: ,
              current_office: ,
              running_for: ,
              elect_date:
              )

marcorubio = Politician.create(
              name: ,
              photo_url: ,
              party: ,
              state: ,
              current_office: ,
              running_for: ,
              elect_date:
              )


hillaryclinton.quotes.create(source:"http://transcripts.cnn.com/TRANSCRIPTS/1603/15/se.03.html", quote_date:20160316,fact_check_rating:"Mostly False",direct_quote:"Our campaign depends on small donations for the majority of our support.")

donaldtrump.quotes.create(source:"http://www.cnn.com/2016/03/10/politics/republican-debate-transcript-full-text/index.html", quote_date:20160416,fact_check_rating:"False", direct_quote:"GDP (gross domestic product) was zero essentially for the last two quarters.")

tedcruz.quotes.create(source:"https://www.washingtonpost.com/news/the-fix/wp/2016/01/28/7th-republican-debate-transcript-annotated-who-said-what-and-what-it-meant/",
quote_date:20160128, fact_check_rating:"Pants on Fire", direct_quote:"First of all, we have seen now in six years of Obamacare that it has been a disaster. It is the biggest job-killer in this country. Millions of Americans have lost their jobs, have been forced into part-time work, have lost their health insurance, have lost their doctors, have seen their premiums skyrocket.")

berniesanders.quotes.create(source:"http://www.politifact.com/truth-o-meter/statements/2016/mar/02/bernie-s/sanders-welfare-reform-more-doubled-extreme-povert/", quote_date:20160306, fact_check_rating:"Mostly True", direct_quote:"Now what happened as a result of that so-called welfare reform bill? Since legislation was signed into law, the number of families living in extreme poverty has more than doubled from 636,000 to 1.6 million.")

johnkasich.quotes.create(source:"http://time.com/3988276/republican-debate-primetime-transcript-full-text/", quote_date:20150806, fact_check_rating:"Mostly True", direct_quote:"I was the chairman of the House Budget Committee and one of the chief architects the last time we balanced a budget, and it was the first time we had done it since man walked on the moon.")

gwenmoore.quotes.create(source:"https://twitter.com/RepGwenMoore/status/710107597009866752",quote_date:20160316,fact_check_rating:"True", direct_quote:"6 justices confirmed in presidential election years since 1912.")



# quote_data.each_pair do | politician_name, quotes|
#   info = politician_data[politician_name.to_sym]
#   current_politician = Politician.create!({
#     name:           info[:name],
#     photo_url:      info[:photo_url],
#     party:          info[:party],
#     state:          info[:state],
#     current_office: info[:current_office],
#     running_for:    info[:running_for],
#     elect_date:     info[:elect_date]
#     })
#
#     quotes.each do |quote|
#       Quote.create!({
#         source:            info[:source],
#         quote_date:        info[:quote_date],
#         fact_check_rating: info[:fact_check_rating],
#         direct_quote:      info[:direct_quote],
#         politician:        current_politician
#         })
#       end
#     end


    # trump = Politician.create(name: "Donald Trump", party:"Republican", state:"New York", current_office:"", running_for:"President", photo_url:"http://www.travelandleisure.com/sites/default/files/styles/1600x1000/public/trump0715.jpg?itok=ZOEWi1UB" elect_date:20161108)
    # cruz = Politician.create(name: "Ted Cruz", party:"Republican", state:"Texas", current_office:"Senate", running_for:"President" photo_url:"http://www.gannett-cdn.com/-mm-/cfd2949a6bc4f7e98cc6a3fae3f80d64a910519e/c=0-159-4926-2942&r=x1683&c=3200x1680/local/-/media/2015/06/27/USATODAY/USATODAY/635710194244161615-XXX-CAPITAL-DOWNLOAD-SEN.-TED-CRUZ-JMG-40121-74074276.JPG", elect_date:20161108)
    # clinton = Politician.create(name: "Hillary Clinton", party:"Democrat", state:"New York", current_office:"", running_for:"President", photo_url:"" elect_date:20161108)
    # sanders = Politician.create(name: "Bernie Sanders", party:"Democrat", state:"Vermont", current_office:"Senate", running_for:"President", photo_url:"" elect_date:20161108)
    # kasich = Politician.create(name: "Bernie Sanders", party:"Republican", state:"Ohio", current_office:"Governor", running_for:"President", photo_url:"" elect_date:20161108)
    # gwen_moore = Politician.create(name: "Gwen Moore", party:"Democrat", state:"Wisconsin", current_office:"Representative", running_for:"Representative", photo_url:"" elect_date:20161108)
