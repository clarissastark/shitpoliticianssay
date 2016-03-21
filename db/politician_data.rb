def get_politician_data
  politician_data = {
    "donaldtrump": {
                    name: "Donald Trump",
                    photo_url: "http://www.travelandleisure.com/sites/default/files/styles/1600x1000/public/trump0715.jpg?itok=ZOEWi1UB",
                    party:"Republican",
                    state:"New York",
                    current_office:"",
                    running_for:"President",
                    elect_date:20161108
                  },
    "tedcruz": {
                    name: "Ted Cruz",
                    photo_url:"http://www.gannett-cdn.com/-mm-/cfd2949a6bc4f7e98cc6a3fae3f80d64a910519e/c=0-159-4926-2942&r=x1683&c=3200x1680/local/-/media/2015/06/27/USATODAY/USATODAY/635710194244161615-XXX-CAPITAL-DOWNLOAD-SEN.-TED-CRUZ-JMG-40121-74074276.JPG",
                    party:"Republican",
                    state:"Texas",
                    current_office:"Senate",
                    running_for:"President",
                    elect_date:20161108
                  },
    "hillaryclinton": {
                    name: "Hillary Clinton",
                    photo_url: "http://b-i.forbesimg.com/tomwatson/files/2013/11/secretaryclintonheadshot.jpg",
                    party:"Democrat",
                    state:"New York",
                    current_office:"",
                    running_for:"President",
                    elect_date:20161108
                  },
    "berniesanders": {
                    name: "Bernie Sanders",
                    photo_url: "http://www.gannett-cdn.com/-mm-/f879a8b913f18f6bde45e56ce3936ebca696bd89/c=0-235-4926-3018&r=x1683&c=3200x1680/local/-/media/2015/06/09/USATODAY/USATODAY/635694650061186432-XXX-CAPITAL-DOWNLOAD-SEN.-SANDERS-JMG-39235-73667404.JPG",
                    party:"Democrat",
                    state:"Vermont",
                    current_office:"Senate",
                    running_for:"President",
                    elect_date:20161108
                  },
    "johnkasich": {
                    name: "John Kasich",
                    photo_url: "https://cmgddnohiopolitics.files.wordpress.com/2015/08/john-kasich.jpg",
                    party:"Republican",
                    state:"Ohio",
                    current_office:"Governor",
                    running_for:"President",
                    elect_date:20161108
                  },
    "gwenmoore": {
                    name: "Gwen Moore",
                    photo_url: "http://www.dems.gov/wp-content/uploads/2013/08/MooreG-WI4D.jpg",
                    party:"Democrat",
                    state:"Wisconsin",
                    current_office:"Representative",
                    running_for:"Representative",
                    elect_date:20161108
                  }
    }
  return politician_data
end
