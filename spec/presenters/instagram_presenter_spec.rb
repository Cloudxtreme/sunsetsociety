require "rails_helper"

describe InstagramPresenter do
  it "parses the data hash" do
    data = {"attribution"=>nil,
    "tags"=>
     ["sunset", "sundown", "esse", "vsco", "chemnitz", "hilbersdorf", "karl"],
    "type"=>"image",
    "location"=>{'latitude' => 1234, 'longitude' => 4567},
    "comments"=>{"count"=>0, "data"=>[]},
    "filter"=>"Normal",
    "created_time"=>"1428086500",
    "link"=>"https://instagram.com/p/1BfEl2D7Uf/",
    "likes"=>
     {"count"=>7,
      "data"=>
       [{"username"=>"cazciceyi",
         "profile_picture"=>
          "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/11022935_865989940125061_1483716900_a.jpg",
         "id"=>"366208011",
         "full_name"=>"Fatmanur Yavuz"},
        {"username"=>"gettffrreef0l0wrrs",
         "profile_picture"=>
          "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-19/11111436_669836306456432_221715151_a.jpg",
         "id"=>"1799164878",
         "full_name"=>""},
        {"username"=>"travelcat_romie",
         "profile_picture"=>
          "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/10727306_1490852154524997_1920332242_a.jpg",
         "id"=>"1010128342",
         "full_name"=>"Romie"},
        {"username"=>"mata_pristachova",
         "profile_picture"=>
          "https://igcdn-photos-h-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/11111246_424449301077887_1446891013_a.jpg",
         "id"=>"1345776455",
         "full_name"=>"📷 🇹🇮🇳🇦"}]},
    "images"=>
     {"low_resolution"=>
       {"url"=>
         "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/s306x306/e15/11098595_447220715442320_1566768540_n.jpg",
        "width"=>306,
        "height"=>306},
      "thumbnail"=>
       {"url"=>
         "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/s150x150/e15/11098595_447220715442320_1566768540_n.jpg",
        "width"=>150,
        "height"=>150},
      "standard_resolution"=>
       {"url"=>
         "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11098595_447220715442320_1566768540_n.jpg",
        "width"=>640,
        "height"=>640}},
    "users_in_photo"=>[],
    "caption"=>
     {"created_time"=>"1428086500",
      "text"=>
       "#sunset #chemnitz #esse #sundown #hilbersdorf #karl-marx-stadt #vsco",
      "from"=>
       {"username"=>"fukke_retardumb",
        "profile_picture"=>
         "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-19/10946541_1601416620078644_165006237_a.jpg",
        "id"=>"145676004",
        "full_name"=>""},
      "id"=>"955181251211278264"},
    "user_has_liked"=>false,
    "id"=>"955181250934453535_145676004",
    "user"=>
     {"username"=>"fukke_retardumb",
      "profile_picture"=>
       "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-19/10946541_1601416620078644_165006237_a.jpg",
      "id"=>"145676004",
      "full_name"=>""}}


    presenter = InstagramPresenter.new(data)

    expect(presenter.latitude).to eq 1234
    expect(presenter.longitude).to eq 4567
  end
end
