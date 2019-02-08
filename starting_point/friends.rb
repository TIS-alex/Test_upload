def get_name(person)
  return person[:name]
end


def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

# function "favourite tv show", takes in a person.
# value is revealed two layers in, favourites, ten TV show.



def likes_to_eat(person, food)
return person[:favourites][:snacks].include?(food)
end

# my notes for 3: function checks a person, and food argument.

def add_friend(person, friend)
person[:friends].push(friend)
end
# my notes for 4: add friend function, takes in a person and a friend.
 #adding a string to an array, find array, ie, Person/frineds,  add string to array
  # with push.


def remove_friend(person, friend)
  person[:friends].delete(friend)
end

# mynotes5: function takes in person and friend.
# person/friends gets the array, then method is .delete
#
def count_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
end
return total_money
end

# my notes 6: function total-money, takes in people.
#
def loan_money(lender, lendee, amount)
lender[:monies] -= amount
lendee[:monies] += amount
end


def all_fav_foods(people)
  result = " "
  for person in people
    for snack in person[:favourites][:snacks]
      result.concat(snack + " ")
    end
  end
  return result
end

def people_no_friends(people)
result = []
for person in people
  if(person [:friends].empty?)
    result << person
end
end
return result
end
