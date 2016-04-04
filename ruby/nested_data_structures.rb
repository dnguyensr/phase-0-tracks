bookshelf = {
  movies: {
    animated: {
      disney: ["Zootopia", "Inside Out", "Big Hero 6", "Frozen"],
      pixar: [["Monsters University", 8], ["Brave", 9], ["Toy Story 3", 10], ["Toy Story 2", 8], ["Wall-E", 10]]
    },
    war: {
      worldwar2: {
        westernfront: {
          universalpictures: ["Inglorious Bastards"],
          dreamworks: ["Saving Private Ryan"]
        },
        easternfront:{
          paramount: ["Enemy at the Gates"],
          bavariastudios: ["Stalingrad"]
        },
        pacific:{
          dreamworks: ["Letters to Iwo Jima"],
          touchstonepictures:["Pearl Harbor"],
          fox: ["The Thin Red Line"],
          mgm: ["Windtalkers"]
        }
      }
    }
  },
  tv: {
    fantasy: {
      gameofthrones: {
        houses: {
          starks: ["Eddard", "Catelyn", "Robb", "Jon Snow", "Sansa" "Arya", "Bran", "Rickon"],
          baratheon: ["Robert", "Stannis", "Renly", "Shireen"],
          lannister: ["Tywin", "Cersei", "Jaime", "Tyrion", "Joffrey", "Myrcella", "Tommen"],
          targaryen: ["Aemon", "Viserys", "Daenerys"]
        }
      }
    },
    horror: {
      walkingdead: {
      groups:{
        thesaviors: ["Negan", "Lucille"],
        alexandria: ["Rick", "Carl", "Michonne", "Glenn", "Maggie", "Carol", "Daryl", "Sasha", "Abaraham", "Nicholas"],
        hilltop: ["Gregory", "Paul", "Harlan"]
        }
      }
    }
  }
}

#print characters in Hilltop
p bookshelf[:tv][:horror][:walkingdead][:groups][:hilltop]
#print third disney movie on list
p bookshelf[:movies][:animated][:disney][2]
#print Game of Thrones family houses
p bookshelf[:tv][:fantasy][:gameofthrones][:houses].keys
#print Pacific front movies
p bookshelf[:movies][:war][:worldwar2][:pacific].values
#print Pixar movies and ratings with rating greater than 8
p bookshelf[:movies][:animated][:pixar].keep_if { |movie, rating| rating > 8 }