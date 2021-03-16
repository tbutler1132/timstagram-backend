Picture.destroy_all
User.destroy_all
Like.destroy_all
Comment.destroy_all

user_alien = User.create(profile_photo_url: "https://media1.s-nbcnews.com/i/newscms/2017_31/2091096/170801-alien-extraterrestrial-mn-1210_8154e1bb6593a2e8338b4c858287ee0e.jpg", bio: "I am an Alien", username: "Alien123")

user_predator = User.create(profile_photo_url: "https://townsquare.media/site/442/files/2020/11/predator-11-22-33.jpg?w=980&q=75", bio: "I am a predator", username: "Predator123")

alien_pic1 = Picture.create(user: user_alien, photo_url: "https://media.wired.com/photos/5926bec5f3e2356fd800a4fb/191:100/w_1200,h_630,c_limit/AlienHP-DT5FRH.jpg", Caption: "My favorite Alien")

alien_pic2 = Picture.create(user: user_alien, photo_url: "https://images.theconversation.com/files/192834/original/file-20171101-19850-1xw0u3e.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=496&fit=clip", Caption: "My second Fav Alien")

comment_1 = Comment.create(picture: alien_pic1, user: user_predator, content: "Cool Pic")