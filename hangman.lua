local words = {"banana", "computer", "lua", "hangman", "terminal"}
math.randomseed(os.time())
local word = words[math.random(#words)]

local word_letters ={}
for i=1, #word do
        word_letters[i] = word:sub(i,i)
end

--game state
local guesssed_letters ={}
local correct_guesses = {}
local max_attempts = 6
local wrong_guesses = 0

--functions that displays the hidden word / word
function display_word()
    local display = ""
    for i=1, #word_letters do
        local letter = word_letters[i]
        if correct_guesses[letter] then
            display = display .. letter .. " "
        else
            display = display .. "_"
        end

    end

    print("\n Word: " .. display)
end

--function to draw hangman
function display_hangman()
    local hangman = {
        "  ___",
        " |   |",
        wrong_guesses>=1 and "| 0" or "|",
        wrong_guesses ==2 and "| |" or
        wrong_guesses ==3 and "| /|" or
        wrong_guesses ==4 and "| /|\\" or " |",
        wrong_guesses ==5 and "| /" or
        wrong_guesses >=6 and "| /\\" or " |",
        " |",
        "_|_"
    }
    for _, line in ipairs(hangman) do
        print(line)
    end
end

--check for win
function is_winner()
    for _, letter in ipairs(word_letters) do
        if not correct_guesses[letter] then
            return false
        end
    end
    return true
end

--main game loop
while true do
    display_hangman()
    display_word()
    io.write("\nGuess a letter: " )
    local guess = io.read():lower()

    if #guess ~= 1 or not guess:match("%a") then
        print("Invalid input. Ender a single LETTER!")
    elseif guesssed_letters[guess] then
        print("You already guessed that letter")
    else
        guesssed_letters[guess] = true

        local found = false
        for _, letter in ipairs(word_letters) do
            if letter ==guess then
                correct_guesses[guess] = true
                found = true
            end
        end
        if not found then 
            wrong_guesses= wrong_guesses+1
            print("Wrong guess! Attempts left: " ..(max_attempts-wrong_guesses))
    end
    if is_winner() then
        display_word( )
        print("\nContragulations! You guessed the word: " .. word)
        break
    elseif wrong_guesses>= max_attempts then
        display_hangman()
        print("\nGame Over! The word was: " ..word)
        break
    end
end
end