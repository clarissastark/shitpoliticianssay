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
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2Ftrump_1.jpg",
                party:"Republican",
                state:"New York",
                current_office:"",
                running_for:"President",
                elect_date:20161108)

tedcruz = Politician.create(
                name: "Ted Cruz",
                photo_url:"http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2FTed_Cruz_1.jpg",
                party:"Republican",
                state:"Texas",
                current_office:"Senate",
                running_for:"President",
                elect_date:20161108)

hillaryclinton = Politician.create(
                name: "Hillary Clinton",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2Fclinton_mug.jpg",
                party:"Democrat",
                state:"New York",
                current_office:"",
                running_for:"President",
                elect_date:20161108)

berniesanders = Politician.create(
                name: "Bernie Sanders",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2FBernie_Sanders.jpg",
                party:"Democrat",
                state:"Vermont",
                current_office:"Senate",
                running_for:"President",
                elect_date:20161108)

johnkasich = Politician.create(
                name: "John Kasich",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2FJohn_Kasich_2.jpg",
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
                name: "Elizabeth Warren",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2FWarren.jpg",
                party: "Democrat",
                state: "Massachusetts",
                current_office: "Senate",
                running_for: "Senate",
                elect_date: 20181106)

paulryan = Politician.create(
                name: "Paul Ryan",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2Fpaul_ryan_last.jpg",
                party: "Republican",
                state: "Wisconsin",
                current_office: "Speaker of the House",
                running_for: "Representative",
                elect_date: 20161108)

joebiden = Politician.create(
                name: "Joe Biden",
                photo_url: "http://static.politifact.com.s3.amazonaws.com/mugs%2Fmug-joebiden.jpg",
                party: "Democrat",
                state: "Delaware",
                current_office: "Vice President",
                running_for: "",
                elect_date:nil)

mitchmcconnell = Politician.create(
              name: "Mitch McConnell",
              photo_url: "http://www.politifact.com/personalities/mitch-mcconnell/",
              party: "Republican",
              state: "Kentucky",
              current_office: "Senate Majority Leader",
              running_for: "Senate",
              elect_date: 20201103)

nancypelosi = Politician.create(
              name: "Nancy Pelosi",
              photo_url: "http://static.politifact.com.s3.amazonaws.com/mugs%2Fmug-nancypelosi.jpg",
              party: "Democrat",
              state: "California",
              current_office: "Minority Leader",
              running_for: "Representative",
              elect_date: 20161108)

marcorubio = Politician.create(
              name: "Marco Rubio",
              photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2FMarco_Rubio.jpg",
              party: "Republican",
              state: "Florida",
              current_office: "Senate",
              running_for: "",
              elect_date:nil)

barackobama = Politician.create(
              name: "Barack Obama",
              photo_url: "http://static.politifact.com.s3.amazonaws.com/politifact%2Fmugs%2Fobamamug_1.jpg",
              party: "Democrat",
              state: "Illinois",
              current_office: "President",
              running_for: "",
              elect_date:nil)


# hillaryclinton.quotes.create(source: , quote_date: , fact_check_rating: , direct_quote: ,)

hillaryclinton.quotes.create(source:"http://transcripts.cnn.com/TRANSCRIPTS/1603/15/se.03.html", quote_date:20160316,fact_check_rating:"Mostly False",direct_quote:"Our campaign depends on small donations for the majority of our support.")

donaldtrump.quotes.create(source:"http://www.cnn.com/2016/03/10/politics/republican-debate-transcript-full-text/index.html", quote_date:20160416,fact_check_rating:"False", direct_quote:"GDP (gross domestic product) was zero essentially for the last two quarters.")

donaldtrump.quotes.create(source: "http://www.cnn.com/2016/03/10/politics/republican-debate-transcript-full-text/", quote_date: 20160310, fact_check_rating: "False", direct_quote: "(Common Core is) education through Washington D.C.")

donaldtrump.quotes.create(source: "http://www.realclearpolitics.com/video/2015/10/18/full_replay_and_transcript_donald_trump_with_fncs_chris_wallace.html", quote_date: 20151008, fact_check_rating: "True", direct_quote: "I don't think anybody makes television sets in the United States anymore. I don't want to order from South Korea. I want to order from here.")

donaldtrump.quotes.create(source: "https://www.washingtonpost.com/news/the-fix/wp/2016/02/13/the-cbs-republican-debate-transcript-annotated/", quote_date: 20160213, fact_check_rating: "False", direct_quote: "(On the Iraq war) I said it loud and clear, 'You'll destabilize the Middle East.'")

donaldtrump.quotes.create(source: "https://www.youtube.com/watch?v=fmlA7sDmu30", quote_date: 20160126, fact_check_rating: "Mostly False", direct_quote: "We’re spending tremendous amounts of money to educate our kids. In the world, we're No. 1 per pupil by a factor of four.")

tedcruz.quotes.create(source:"https://www.washingtonpost.com/news/the-fix/wp/2016/01/28/7th-republican-debate-transcript-annotated-who-said-what-and-what-it-meant/",
quote_date:20160128, fact_check_rating:"Pants on Fire", direct_quote:"First of all, we have seen now in six years of Obamacare that it has been a disaster. It is the biggest job-killer in this country. Millions of Americans have lost their jobs, have been forced into part-time work, have lost their health insurance, have lost their doctors, have seen their premiums skyrocket.")

berniesanders.quotes.create(source:"http://www.politifact.com/truth-o-meter/statements/2016/mar/02/bernie-s/sanders-welfare-reform-more-doubled-extreme-povert/", quote_date:20160306, fact_check_rating:"Mostly True", direct_quote:"Now what happened as a result of that so-called welfare reform bill? Since legislation was signed into law, the number of families living in extreme poverty has more than doubled from 636,000 to 1.6 million.")

johnkasich.quotes.create(source:"http://time.com/3988276/republican-debate-primetime-transcript-full-text/", quote_date:20150806, fact_check_rating:"Mostly True", direct_quote:"I was the chairman of the House Budget Committee and one of the chief architects the last time we balanced a budget, and it was the first time we had done it since man walked on the moon.")

gwenmoore.quotes.create(source:"https://twitter.com/RepGwenMoore/status/710107597009866752",quote_date:20160316,fact_check_rating:"True", direct_quote:"6 justices confirmed in presidential election years since 1912.")

elizabethwarren.quotes.create(source: "http://teamcoco.com/video/senator-elizabeth-warren-pt-1-04-07-15", quote_date: 20150408, fact_check_rating: "Half True", direct_quote: "Just the loans from 2007 to 2012 that little slice on target to produce $66 billion in profits for the United States government.")

paulryan.quotes.create(source: "http://www.cnbc.com/2016/02/23/house-speaker-ryan-americans-are-upset-they-economy-is-on-the-wrong-track.html", quote_date: 20160223, fact_check_rating: "False", direct_quote: "There’s a reason for having this tradition of not nominating somebody (to the U.S. Supreme Court) in the middle of a presidential election, because it gets so political. I agree with that precedent, and there is a precedent for that.")

joebiden.quotes.create(source: "https://www.whitehouse.gov/the-press-office/2015/03/09/statement-vice-president-march-9-letter-republican-senators-islamic-repu", quote_date: 20150309, fact_check_rating: "Half True", direct_quote: "The vast majority of our international commitments take effect without congressional approval.")

mitchmcconnell.quotes.create(source: "http://transcripts.cnn.com/TRANSCRIPTS/1411/13/sn.01.html", quote_date:20141113 , fact_check_rating: "False", direct_quote: "It (the climate-change agreement between the United States and China) requires the Chinese to do nothing at all for 16 years while these carbon emission regulations are creating havoc in my state and other states around the country.")

marcorubio.quotes.create(source: "https://politicaladarchive.org/ad/PolAd_MarcoRubio_HillaryClinton_1w6vw/", quote_date: 20160214, fact_check_rating: "Half True", direct_quote: "People (are) paying more in taxes than they will for food, housing and clothing combined.")

marcorubio.quotes.create(source: "https://www.washingtonpost.com/news/the-fix/wp/2016/03/10/the-cnn-miami-republican-debate-transcript-annotated/", quote_date: 20160310, fact_check_rating: "True", direct_quote: "I'm against any sort of wasting of money on foreign aid, but it's less than 1 percent of our federal budget.")

barackobama.quotes.create(source: "https://www.whitehouse.gov/the-press-office/2016/03/14/remarks-president-dnc-reception-austin-tx", quote_date: 20160311, fact_check_rating: "Mostly True", direct_quote: "You’ve got these folks saying  immigration is our biggest crisis when illegal immigration is lower than it’s been in 40 years.")

barackobama.quotes.create(source: "https://www.whitehouse.gov/the-press-office/2016/01/12/remarks-president-barack-obama-%E2%80%93-prepared-delivery-state-union-address", quote_date:20160112 , fact_check_rating: "Half True", direct_quote: "(We've) lifted high school graduation rates to new highs.")

nancypelosi.quotes.create(source: "http://transcripts.cnn.com/TRANSCRIPTS/1601/13/nday.05.html", quote_date: 20160113, fact_check_rating: "Pants on Fire", direct_quote: "(China and Russia) have never voted with us in the U.N. on any sanctions on Iran in the past."
)

# .quotes.create(source: , quote_date: , fact_check_rating: , direct_quote: ,)



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
