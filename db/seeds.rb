# Adds a location if it doesn't exist in it's table
# and returns the location_id either way
def add_location(city, state)

  location = Location.find_by(city: city, state: state)

  unless location
    location = Location.create!(city: city, state: state)
  end

  location.id

end

def add_shelter(name, location)
  shelter = Shelter.find_by(name: name, location_id: location)
  unless shelter
    shelter = Shelter.create!(name: name, location_id: location)
  end
  shelter.id
end

def add_breed(name)
  breed = Breed.find_by(name: name)
  unless breed
    breed = Breed.create!(name: name)
  end
  breed.id
end

def add_color(name)
  color = Color.find_by(name: name)
  unless color
    color = Color.create!(name: name)
  end
  color.id
end

# Let's add some dogs

# MIDAS - https://www.petfinder.com/petdetail/33741517
midas = Dog.create!(name: "Midas", gender: "male", dob: "2014-10-19",
                    bio: "Hello! My name is Midas. What’s yours? I am a Staffordshire Bull Terrier. Here are some characteristics of my breed - Bold, Reliable, Loyal, Courageous, Fearless, Intelligent, Affectionate – pretty good, huh? I am 1 year old and weigh 47 pounds. I am considered fully grown. Does that mean I can smoke cigarettes? -just kidding-",
                    size: 4, location_id: add_location("Boston", "Massachusetts"),
                    shelter_id: add_shelter("A Better Life", add_location("Houston", "Texas")),
                    image:"https://drpem3xzef3kf.cloudfront.net/photos/pets/33741517/1/?bust=1447105625&width=632&no_scale_up=1")

BreedMix.create!(dog: midas, breed_id: add_breed("Staffordshire Bull Terrier"))

ColorMix.create!(dog: midas, color_id: add_color("Tan"))
ColorMix.create!(dog: midas, color_id: add_color("White"))

# EMMY - https://www.petfinder.com/petdetail/33712207
emmy = Dog.create!(name: "Emmy", gender: "female", dob: "2010-12-23",
                    bio: "Hi! My name is Emmy. What’s yours? Since you’re looking at my cute self, you probably want to know more about me, right? Well, here goes! I am a Terrier mix, I am told by those 2-legged creatures called humans. Do you know any of them? They’ve been very nice to me. I am a petite 22 pounds and I am 3.5 years old and fully vetted and spayed. Yikes!",
                    size: 2, location_id: add_location("Boston", "Massachusetts"),
                    shelter_id: add_shelter("A Better Life", add_location("Houston", "Texas")),
                    image:"https://drpem3xzef3kf.cloudfront.net/photos/pets/33712207/1/?bust=1446780980&width=632&no_scale_up=1")

BreedMix.create!(dog: emmy, breed_id: add_breed("Terrier"))
BreedMix.create!(dog: emmy, breed_id: add_breed("Mix"))

ColorMix.create!(dog: emmy, color_id: add_color("Cream"))

# CHAUNCEY - https://www.petfinder.com/petdetail/33651185
chauncey = Dog.create!(name: "Chauncey", gender: "male", dob: "2005-08-17",
                    bio: "The handsome, distinguished gentleman you see before you is Chauncey, a gentle soul looking for his forever home. Found wandering, matted with cockleburs, Chauncey was only too happy to be rescued by NEBR. He was initially a bit fearful (fireworks, thunder), but has grown increasingly comfortable with a regular routine and lots of human contact. Chauncey was originally a bit thin and weak, but regular meals and consistent, moderate exercise have given him new strength and
                      muscle tone in just a few weeks. ",
                    size: 3, location_id: add_location("Cummingham", "Massachusetts"),
                    shelter_id: add_shelter("New England Brittany Rescue", add_location("Cummingham", "Massachusetts")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33651185/1/?bust=1446159553&width=632&no_scale_up=1")

BreedMix.create!(dog: chauncey, breed_id: add_breed("Brittany Spaniel"))

ColorMix.create!(dog: chauncey, color_id: add_color("Chestnut"))
ColorMix.create!(dog: chauncey, color_id: add_color("Cream"))

# ODIE - https://www.petfinder.com/petdetail/33557692
odie = Dog.create!(name: "Odie", gender: "male", dob: "2012-05-15",
                    bio: "This cute 4 month old 25 lb pup ended up at a high kill shelter in Houston, TX. On Friday, 10/16 the shelter was given orders for dogs at the shelter for 25 days are longer were to be put to sleep that day. The emails started going out to save about 30 dogs. Odie was one of the lucky dogs who was saved by his foster mom.",
                    size: 4, location_id: add_location("Boston", "Massachusetts"),
                    shelter_id: add_shelter("Another Happy Tail", add_location("Cypress", "Texas")),
                    image: "http://www.labrador-retriever-info.com/images/labrador003.jpg")

BreedMix.create!(dog: odie, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: odie, breed_id: add_breed("Mix"))

ColorMix.create!(dog: odie, color_id: add_color("Chocolate"))

# KANE - https://www.petfinder.com/petdetail/33721801
kane = Dog.create!(name: "Kane", gender: "male", dob: "2013-03-09",
                    bio: "Hi, my name is Kane. What’s yours? I am a 1-year old American Bulldog/Pointer mix. I turned out pretty cute, huh? That’s what those 2-legged creatures tell me anyway. I know they mean it because they smile and love on me a lot when they’re talking baby talk to me. Wanna know more stuff about me? Here goes! I weigh 50 pounds and I’m not expected to grow larger. I am up to date on all of my shots and I’ve been neutered. YIKES!",
                    size: 3, location_id: add_location("Boston", "Massachusetts"),
                    shelter_id: add_shelter("A Better Life", add_location("Houston", "Texas")),
                    image: "https://upload.wikimedia.org/wikipedia/commons/d/d8/%D7%91%D7%95%D7%9C%D7%93%D7%95%D7%92_%D7%90%D7%9E%D7%A8%D7%99%D7%A7%D7%90%D7%99_2014-04-15_02-34.jpg")

BreedMix.create!(dog: kane, breed_id: add_breed("American Bulldog"))
BreedMix.create!(dog: kane, breed_id: add_breed("Pointer"))

ColorMix.create!(dog: kane, color_id: add_color("Cream"))
ColorMix.create!(dog: kane, color_id: add_color("Chocolate"))

# CHARLIE - https://www.petfinder.com/petdetail/33721801
charlie = Dog.create!(name: "Charlie", gender: "male", dob: "2009-01-16",
                    bio: "Howdy! Caught you looking! My name is Bebe! Am I not gorgeous? I am 56 pound Texas cuddle bug that loves to give kisses and play! I am 2 years old. I am a little shy at first, but I warm up quick to new people. I am great with other dogs and even like cats! I am happy playing or just hanging out watching a movie. I could also be someone’s walking buddy or hang out at the local coffee shop, as I am active, but not hyper. I love to play, but can be a very mellow dog when I get some lovin, especially a belly rub!",
                    size: 3, location_id: add_location("Boston", "Massachusetts"),
                    shelter_id: add_shelter("Another Happy Tail", add_location("Cypress", "Texas")),
                    image: "http://3.bp.blogspot.com/-hIGvGBXsX1k/UOKQE9R6HwI/AAAAAAAABBY/PU9AAlNMRDc/s1600/German-Shorthaired-Pointer-3.jpg")

BreedMix.create!(dog: charlie, breed_id: add_breed("Mix"))
BreedMix.create!(dog: charlie, breed_id: add_breed("Pointer"))

ColorMix.create!(dog: charlie, color_id: add_color("Cream"))
ColorMix.create!(dog: charlie, color_id: add_color("Chocolate"))

# COCO - https://www.petfinder.com/petdetail/33721801
coco = Dog.create!(name: "Coco", gender: "female", dob: "2010-03-21",
                    bio: "Please meet 9 month old Coco Chanel! She has the most gorgeous chocolate brown coat, and has the legs of a super model(she's very tall)! She is housebroken and knows her basic commands but needs someone willing to help build her confidence and train her to be the best dog she can be. The last picture describes her personality perfectly! She is a very playful puppy who would do best in an active family.",
                    size: 3, location_id: add_location("West Springfield", "Massachusetts"),
                    shelter_id: add_shelter("Broken Tail Rescue", add_location("Worcester", "Massachusetts")),
                    image: "http://www.happydogheaven.com/wp-content/uploads/boxer-yellow-lab-mix-miami-valley-dog-blog-catching-up-forty-one-fantastic-pooches.jpg")

BreedMix.create!(dog: coco, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: coco, breed_id: add_breed("Boxer"))

ColorMix.create!(dog: coco, color_id: add_color("Chocolate"))

# GYPSY - https://www.petfinder.com/petdetail/33718759
gypsy = Dog.create!(name: "Gypsy", gender: "female", dob: "2013-04-21",
                    bio: "Meet Gypsy! Gypsy is a stunning one year old Great Pyrenees who is looking for her forever home. She is wonderful with everyone she meets! Don't let her beauty fool you, Gypsy definitely has a Great Pyrenees attitude. She will only be adopted to a home with a secure fenced yard that understands this special breed. Please email jen.vargas@bigfluffydogs.com if you are interested in adopting Gypsy.",
                    size: 4, location_id: add_location("Enfield", "Connecticut"),
                    shelter_id: add_shelter("Big Fluffy Dog", add_location("Enfield", "Connecticut")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33718759/3/?bust=1447330985&width=632&no_scale_up=1")

BreedMix.create!(dog: gypsy, breed_id: add_breed("Great Pyrenees"))

ColorMix.create!(dog: gypsy, color_id: add_color("Cream"))

# BOBBY - https://www.petfinder.com/petdetail/33686337
bobby = Dog.create!(name: "Bobby", gender: "male", dob: "2012-09-16",
                    bio: "Hello! I'm Bobby. Adopt me!",
                    size: 2, location_id: add_location("Springfield", "Massachusetts"),
                    shelter_id: add_shelter("Thomas J. O'Connor Animal Control andAdoption Center", add_location("Springfield", "Massachusetts")),
                    image:"https://s-media-cache-ak0.pinimg.com/236x/b2/42/b3/b242b33c889db13c6a0e5f8c53ac9b41.jpg")

BreedMix.create!(dog: bobby, breed_id: add_breed("Silky Terrier"))

ColorMix.create!(dog: bobby, color_id: add_color("Mustard"))

# TUCKER - https://www.petfinder.com/petdetail/33736064
tucker = Dog.create!(name: "Tucker", gender: "male", dob: "2010-02-11",
                    bio: "Tucker is a big love! He is an owner surrender because their older dog was not getting along with Tucker. I am able to pet and brush Tucker while he is chewing a bone or eating his food. No aggressive behaviour. Tucker has medium energy level, healthy almost 5 year old lab. Tucker settles nicely in the house and wants to snuggle up with his people. Will hop on couch with you when invited. He likes his Kong and Nyla bone to keep him busy. Let's you know when he needs to go out.",
                    size: 4, location_id: add_location("Tiverton", "Rhode Island"),
                    shelter_id: add_shelter("Save A Lab", add_location("Greensboro", "North Carolina")),
                    image: "http://www.scooterthecocker.com/labordaycody2.jpg")

BreedMix.create!(dog: tucker, breed_id: add_breed("Labrador Retriever"))

ColorMix.create!(dog: tucker, color_id: add_color("Yellow"))

# JESSIE - https://www.petfinder.com/petdetail/33571305
jessie = Dog.create!(name: "Jessie", gender: "female", dob: "2015-06-10",
                    bio: "Jessie
                          Black female
                          ~12 weeks old
                          Available in RI
                          Apply at: www.savealabrescue.org",
                    size: 4, location_id: add_location("Portsmouth", "Rhode Island"),
                    shelter_id: add_shelter("Save A Lab", add_location("Greensboro", "North Carolina")),
                    image: "https://s-media-cache-ak0.pinimg.com/736x/72/84/78/72847841ef19226de04c5b41f8da9e7d.jpg")

BreedMix.create!(dog: jessie, breed_id: add_breed("Labrador Retriever"))

ColorMix.create!(dog: jessie, color_id: add_color("Black"))

# ONYX - https://www.petfinder.com/petdetail/33658680
onyx = Dog.create!(name: "Onyx", gender: "female", dob: "2013-07-13",
                    bio: "Onyx is a rel gem! She is very much in puppy mode and is workign with trainers on basic obediece and impulse control. She would do best with experienced dog owners who are ready to teach this girl how to appropriately earn people's attention. A few bad habits but a quick learner. She has play groups at least once a day at the shelter and could potentially go home with other dogs.",
                    size: 3, location_id: add_location("Middletown", "Rhode Island"),
                    shelter_id: add_shelter("Potter League for Animals", add_location("Middletown", "Rhode Island")),
                    image: "http://nextranks.com/data_images/dogs/black-and-tan-coonhound/black-and-tan-coonhound-05.jpg")

BreedMix.create!(dog: onyx, breed_id: add_breed("Coonhound"))
BreedMix.create!(dog: onyx, breed_id: add_breed("Mix"))

ColorMix.create!(dog: onyx, color_id: add_color("Black"))
ColorMix.create!(dog: onyx, color_id: add_color("Tan"))

# CHEECH - https://www.petfinder.com/petdetail/33568976
cheech = Dog.create!(name: "Cheech", gender: "male", dob: "2014-01-07",
                    bio: "Cheech is looking for an experienced owner who is willing to invest the time in teaching Cheech impulse control and manners. He is very smart and loves his toys. Cheech would do best as the only dog in an adult household. If you live an active lifestyle and love to train than this is the boy for you.",
                    size: 3, location_id: add_location("Middletown", "Rhode Island"),
                    shelter_id: add_shelter("Potter League for Animals", add_location("Middletown", "Rhode Island")),
                    image: "http://dg4l0lhura2yj.cloudfront.net/static/images/dogster/breeds/redbone_coonhound.jpg")

BreedMix.create!(dog: cheech, breed_id: add_breed("Coonhound"))
BreedMix.create!(dog: cheech, breed_id: add_breed("Mix"))

ColorMix.create!(dog: cheech, color_id: add_color("Black"))
ColorMix.create!(dog: cheech, color_id: add_color("Tan"))

# PING - https://www.petfinder.com/petdetail/33637723
ping = Dog.create!(name: "Ping", gender: "male", dob: "2008-06-10",
                    bio: "Ping, affectionately called Ping Pong by shelter staff, is a hugger. As soon as you pick him up he melts in to the nook of your neck. This being said he needs some help to learn to walk on leash but luckily he is a tiny tot so it is not too much of an inconvenience. He likes other dogs but prefers mild mannered ones.",
                    size: 1, location_id: add_location("Middletown", "Rhode Island"),
                    shelter_id: add_shelter("Potter League for Animals", add_location("Middletown", "Rhode Island")),
                    image: "http://s3.amazonaws.com/assets.prod.vetstreet.com/87/7124d09ea011e0a2380050568d634f/file/Chihuahua-Smooth-Coat-3-645mk062111.jpg")

BreedMix.create!(dog: ping, breed_id: add_breed("Chihuahua"))
BreedMix.create!(dog: ping, breed_id: add_breed("Mix"))

ColorMix.create!(dog: ping, color_id: add_color("Black"))
ColorMix.create!(dog: ping, color_id: add_color("Tan"))

# LORI - https://www.petfinder.com/petdetail/33632438
lori = Dog.create!(name: "Lori", gender: "female", dob: "2010-03-17",
                    bio: "Little Lori is a precious 3-4 month old lab mix pup.
                          Lori is a friendly girl who enjoys playing with other dogs, toys and people. Lori is crate trained and pretty well house trained as well. She's a well behaved girl who is eager to please and a sponge for learning.
                          Lori is still a puppy therefore she does also enjoy bouts of running, wrestling, and playing toys.",
                    size: 1, location_id: add_location("Berwick", "Maine"),
                    shelter_id: add_shelter("3 Dogs Rescue", add_location("Berwick", "Maine")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33632438/3/?bust=1447089181&width=632&no_scale_up=1")

BreedMix.create!(dog: lori, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: lori, breed_id: add_breed("Mix"))

ColorMix.create!(dog: lori, color_id: add_color("White"))
ColorMix.create!(dog: lori, color_id: add_color("Tan"))

# TOBY - https://www.petfinder.com/petdetail/33592019
toby = Dog.create!(name: "Toby", gender: "male", dob: "2011-04-28",
                    bio: "TOBY is a 8 month old lab (beagle?) mix.
Toby is a super nice guy, crate trained, been good with other dogs and cats. He will sit with people, but if there is anything else going on, he is in on it. Toby gives big dog kisses and then adorable little nibbles. He will steal covers and anything laying on the floor. Toby is a happy guy with loads of playing on his mind. He gets very excited to be out of his crate and running around getting all the smells of the house. Toby would do well in a quiet home, just chilling with people, or in an active home, where he would happily join in and add to the chaos.
Toby is a sweet, people loving, doggy playing, fun loving guy in search of his home.",
                    size: 1, location_id: add_location("Berwick", "Maine"),
                    shelter_id: add_shelter("3 Dogs Rescue", add_location("Berwick", "Maine")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33592019/1/?bust=1449258670&width=632&no_scale_up=1")

BreedMix.create!(dog: toby, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: toby, breed_id: add_breed("Mix"))

ColorMix.create!(dog: toby, color_id: add_color("Black"))
ColorMix.create!(dog: toby, color_id: add_color("White"))

# SADIE - https://www.petfinder.com/petdetail/33589157
sadie = Dog.create!(name: "Sadie", gender: "female", dob: "2009-07-04",
                    bio: "Sadie came to the shelter because her owner is ill and no longer able to care for her. Sadie is a sweetie! She's also very playful and would need an owner with an energy level that reflects hers. Sadie loves toys but plastic squeaky toys are her absolute favorite! Sadie minds her manners with 'sit, paw, down, and stay' but needs some help learning 'leave it.' She can be mouthy with her toys so any prospective owner will want to keep that in mind. Since Sadie is such an enthusiastic girl she can only go home with teenagers (16+). She cannot share her home with cats or other small animals. Sadie prefers the company of humans and cannot go home with another dog. If you want an active companion Sadie is it! Primary Color: Brown Secondary Color: Black Weight: 66 Age: 5yrs 1mths 0wks Animal has been Spayed",
                    size: 3, location_id: add_location("Dover", "New Hampshire"),
                    shelter_id: add_shelter("Cocheco Valley Humane Society", add_location("Dover", "New Hampshire")),
                    image: "http://cdn-www.dailypuppy.com/dog-images/pumpkin-the-shepherd-mix-3_39330_2009-12-23_w450.jpg")

BreedMix.create!(dog: sadie, breed_id: add_breed("Shepard"))
BreedMix.create!(dog: sadie, breed_id: add_breed("Mix"))

ColorMix.create!(dog: sadie, color_id: add_color("Black"))
ColorMix.create!(dog: sadie, color_id: add_color("Brown"))

# BRUCE - https://www.petfinder.com/petdetail/33645186
bruce = Dog.create!(name: "Bruce", gender: "male", dob: "2008-08-14",
                    bio: "We all love Bruce! He is true to his breed and protective of the ones he loves. So, we are looking for that very special breed savvy home that can understand his sensitive nature, guide him through the rules/ropes and offer patience as you get to know eachother. He is a single male seeking an adult household, cat free zone and while good with most dogs he meets, really would prefer to have all the attention to himself. He absolutely loves carrides and could be an excellent work truck boy if you let him. Contact us at adoptions@saveoneanimalrescue.org if you think he may be your new roommate.",
                    size: 3, location_id: add_location("Dover", "New Hampshire"),
                    shelter_id: add_shelter("Save One Animal Shelter", add_location("Dover", "New Hampshire")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33645186/1/?bust=1446128071&width=632&no_scale_up=1")

BreedMix.create!(dog: bruce, breed_id: add_breed("Pit Bull Terrier"))

ColorMix.create!(dog: bruce, color_id: add_color("Tan"))

# WINSTON - https://www.petfinder.com/petdetail/32166615
winston = Dog.create!(name: "Winston", gender: "male", dob: "2009-12-09",
                    bio: "Meet gorgeous Winston!!!..He is a 2 -3 year old Lemon Hound who was He was rescued at the last minute from a high kill shelter in North Carolina, he was then stuck in boarding for weeks when Another Chance stepped up.",
                    size: 3, location_id: add_location("North Berwick", "Maine"),
                    shelter_id: add_shelter("Another Chance Animal Rescue", add_location("North Berwick", "Maine")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/32166615/1/?bust=1448720708&width=632&no_scale_up=1")

BreedMix.create!(dog: winston, breed_id: add_breed("Hound"))

ColorMix.create!(dog: winston, color_id: add_color("Tan"))
ColorMix.create!(dog: winston, color_id: add_color("White"))

# STANLEY - https://www.petfinder.com/petdetail/33607730
stanley = Dog.create!(name: "Stanley", gender: "male", dob: "2008-05-30",
                    bio: "Stanley came to the shelter because his previous owner was moving and could not take him along. Stanley appreciates his own space and he prefers the company of humans. He cannot go home with other dogs, cats, or any small animals. Stanley is still working on his manners; mainly greeting you by jumping up on you. Because of this, Stanley would do best in a home with adults. He may be okay with a teenager (16+) who respects his space. He knows some basic commands and is highly motivated by food. Stanley enjoys his walks and will happily accompany you on a long stroll. Stanley is a playful and active boy who would do best in a medium to high energy home with an owner who will keep him active and work with him on his manners. Do you have a home for this energetic, mature boy? Primary Color: Black Secondary Color: Tan Weight: 77 Age: 5yrs 4mths 1wks Animal has been Neutered",
                    size: 4, location_id: add_location("Dover", "New Hampshire"),
                    shelter_id: add_shelter("Cocheco Valley Humane Society", add_location("Dover", "New Hampshire")),
                    image: "https://i.ytimg.com/vi/wgaE_0f-2yU/maxresdefault.jpg")

BreedMix.create!(dog: stanley, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: stanley, breed_id: add_breed("Mix"))

ColorMix.create!(dog: stanley, color_id: add_color("Black"))
ColorMix.create!(dog: stanley, color_id: add_color("White"))

# NEMO - https://www.petfinder.com/petdetail/11715252
nemo = Dog.create!(name: "Nemo", gender: "male", dob: "2009-09-18",
                    bio: "Hi, I'm Nemo and I'm looking for my next best friend. I may be a little shy and scared when you first meet me, but don't let that fool you, I'm the most lovable guy you'll ever meet. Once we are introduced and I feel comfortable I will become the best friend you never had. I just need a little time to make sure you are going to be my friend. If you have a leash around you neck I will probably like you a little faster because I know you will be taking me for a walk. I am very particular about the people that I like, so you will feel very honored when I pick you as my person. I will be a devoted companion for life. I love to give lots of hugs and kisses. Lots! You'll never meet a dog that can give a hug better than I can! No sir! I also love to go on walks and play with my special dog friends. Come out to Francisvale and meet me, you won't be disappointed!",
                    size: 3, location_id: add_location("Radnor", "Pennsylvania"),
                    shelter_id: add_shelter("Francisvale Home for Smaller Animals", add_location("Radnor", "Pennsylvania")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/11715252/2/?bust=1440616549&width=632&no_scale_up=1")

BreedMix.create!(dog: nemo, breed_id: add_breed("Entlebucher"))
BreedMix.create!(dog: nemo, breed_id: add_breed("Bernese Mountain Dog"))

ColorMix.create!(dog: nemo, color_id: add_color("Black"))
ColorMix.create!(dog: nemo, color_id: add_color("Tan"))

# roger - https://www.petfinder.com/petdetail/32337554
sundance = Dog.create!(name: "Sundance", gender: "male", dob: "2009-08-11",
                    bio: "Handsome Sundance is a calm dog, who enjoys moderate exercise and will dote on his family, preferring to keep them within view, and to accompany them on outings whenever possible.",
                    size: 4, location_id: add_location("Greenbelt", "Maryland"),
                    shelter_id: add_shelter("Partnership for Animal Welfare (PAW)", add_location("Greenbelt", "Maryland")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/32337554/3/?bust=1445652446&width=632&no_scale_up=1")

BreedMix.create!(dog: sundance, breed_id: add_breed("Border Collie"))
BreedMix.create!(dog: sundance, breed_id: add_breed("Bernese Mountain Dog"))

ColorMix.create!(dog: sundance, color_id: add_color("Black"))
ColorMix.create!(dog: sundance, color_id: add_color("White"))

# ROGER - https://www.petfinder.com/petdetail/33704553
roger = Dog.create!(name: "Roger", gender: "male", dob: "2008-05-14",
                    bio: "Roger is a handsome golden retriever mix, very polite and loving. He was picked up roaming the main highway. Walks well on a leash and gets along great with people and other dogs. Does not care for cats. Roger was heart-worm positive and has been on the slow kill method (for 18 mos now). He is testing just slight heart-worm positive which is most likely just remaining antigens in the system, which will still test for up to a year after a dog is heart-worm negative. He gives big sloppy kisses.",
                    size: 4, location_id: add_location("Simsbury", "Connecticut"),
                    shelter_id: add_shelter("Smiling Dog Farms", add_location("Wharton", "Texas")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33704553/1/?bust=1446732925&width=632&no_scale_up=1")

BreedMix.create!(dog: roger, breed_id: add_breed("Golden Retriever"))
BreedMix.create!(dog: roger, breed_id: add_breed("Mix"))

ColorMix.create!(dog: roger, color_id: add_color("Chestnut"))

# MAXIMUS - https://www.petfinder.com/petdetail/33726241
maximus = Dog.create!(name: "Maximus", gender: "male", dob: "2015-06-29",
                    bio: "Maximus and Abi are adorable Lab and possible Cur mixes who are as cute as they come. Maximus is the little brown pup with the chocolate dip on his tail. He is the bigger one of the two weighing around 10 pounds (11/7/15). These cuties love everything including cats. Unfortunately the cats aren’t thrilled about being loved by our sweet Pixel pup. We know you will love this sweet guy as much as we do.",
                    size: 4, location_id: add_location("Macon", "Georgia"),
                    shelter_id: add_shelter("The Pixel Fund", add_location("Westbrook", "Maine")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33704553/1/?bust=1446732925&width=632&no_scale_up=1")

BreedMix.create!(dog: maximus, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: maximus, breed_id: add_breed("Mix"))

ColorMix.create!(dog: maximus, color_id: add_color("Tan"))

# ABI - https://www.petfinder.com/petdetail/33726235
abi = Dog.create!(name: "Abi", gender: "female", dob: "2015-03-23",
                    bio: "Abi and Maximus are adorable Lab and possible Cur mixes who are as cute as they come. Abi is the dainty little black pup currently weighing around 7 to 8 pounds (11/7/15). She is a bit shyer than her brother but a very happy girl. These cuties love everything including cats. Unfortunately the cats aren’t thrilled about being loved by our sweet Pixel pup. Submit your app today as these cuties won’t last long.",
                    size: 4, location_id: add_location("Macon", "Georgia"),
                    shelter_id: add_shelter("The Pixel Fund", add_location("Westbrook", "Maine")),
                    image: "https://drpem3xzef3kf.cloudfront.net/photos/pets/33726235/1/?bust=1449767266&width=632&no_scale_up=1")

BreedMix.create!(dog: abi, breed_id: add_breed("Labrador Retriever"))
BreedMix.create!(dog: abi, breed_id: add_breed("Mix"))

ColorMix.create!(dog: abi, color_id: add_color("Black"))
