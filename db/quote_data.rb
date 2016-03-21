def get_quote_data
  quote_data = {
    "hillaryclinton": [
      {:source: "http://transcripts.cnn.com/TRANSCRIPTS/1603/15/se.03.html",
        :quote_date: 20160316,
        :fact_check_rating: "Mostly False",
        :direct_quote: "Our campaign depends on small donations for the majority of our support."}],
    "donaldtrump": [
      {:source: "",
        :quote_date: "",
        :fact_check_rating: "",
        :direct_quote: ""}],
    "tedcruz": [
      {:source: "https://www.washingtonpost.com/news/the-fix/wp/2016/01/28/7th-republican-debate-transcript-annotated-who-said-what-and-what-it-meant/",
        :quote_date: 20160128,
        :fact_check_rating: "Pants on Fire",
        :direct_quote: "First of all, we have seen now in six years of Obamacare that it has been a disaster. It is the biggest job-killer in this country. Millions of Americans have lost their jobs, have been forced into part-time work, have lost their health insurance, have lost their doctors, have seen their premiums skyrocket."}],
    "berniesanders": [
      {:source: "http://www.nytimes.com/2016/03/07/us/politics/transcript-democratic-presidential-debate.html",
        :quote_date: 20160306,
        :fact_check_rating: "Mostly True",
        :direct_quote: "(Flint, Michigan, is) paying three times more for poison water than I am paying in Burlington, Vermont, for clean water."}],
    "johnkasich": [
      {:source: "",
        :quote_date: "",
        :fact_check_rating: "",
        :direct_quote: ""}],
    "gwenmoore": [
      {:source: "https://twitter.com/RepGwenMoore/status/710107597009866752",
        :quote_date: 20160316,
        :fact_check_rating: "True",
        :direct_quote: "6 justices confirmed in presidential election years since 1912."}]
          }
  return quote_data
end
