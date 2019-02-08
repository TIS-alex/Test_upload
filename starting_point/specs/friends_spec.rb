require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Shaggy",
      age: 12,
      monies: 1,
      friends: ["Velma","Fred","Daphne", "Scooby"],
      favourites: {
        tv_show: "Friends",
        snacks: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Velma",
      age: 15,
      monies: 2,
      friends: ["Fred"],
      favourites: {
        tv_show: "Baywatch",
        snacks: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Scooby",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma"],
      favourites: {
        tv_show: "Pokemon",
        snacks: ["Scooby snacks"]
      }
    }

    @person4 = {
      name: "Fred",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma", "Daphne"],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spaghetti", "ratatouille"]
      }
    }

    @person5 = {
      name: "Daphne",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Daphne", result)
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")

def test_favourite_tv_show
  result = favourite_tv_show(@person2)
  assert_equal("Baywatch", result)
end

  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)


# my notes3: result variable, given function "likes to eat", function is given
# a person to check, and the food to check.
# asserts that the result will be true.
def test_likes_to_eat
result = likes_to_eat(@person2, "bread")
assert_equal(result, true)
end

  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)
#mynotes4: add friend, take in a person, and the friend to be addedl
  # then, can assert, that after function, there will be 2 friends.
  #


def test_add_friend
add_friend(@person2, "Scrappy")
assert_equal(2, @person2[:friends].length)
end

  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)
# mynotes5: not assigned to result, tested function by looking at result.
# function called "remove friend", takes in person, and friend to remove.
# asserts that there will be 2 friends left, when we count the length of the friend
# array after the function is run.

def test_remove_friend
  remove_friend(@person4, "Shaggy")
  assert_equal(2, @person4[:friends].length)
end

  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)
# mynotes6: not checking the effect, so we want to assign function output to
# a result "count money", and takes in one thing, which is the array of people.
# we assert that 143 is result of executing function.
#
def test_count_money
result = count_money(@people)
assert_equal(143, result)
end

  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)
# mynotes: this is a function which changes the data set, so we want to check the
# function is loan money, includes lender, lendee and amount
#
#
def test_loan_money
  loan_money(@person3, @person4, 5)
assert_equal(15, @person3[:monies])
assert_equal(25, @person4[:monies])
end
  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)

def test_all_fav_foods
result = all_fav_foods(@people)
assert_equal(" charcuterie soup bread Scooby snacks spaghetti ratatouille spinach ", result)
end



  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)

def test_people_no_friends
  result = people_no_friends(@people)
  assert_equal([@person5], result)
end

end
