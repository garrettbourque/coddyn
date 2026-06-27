io.stdout:setvbuf('no')
print("here")

local board = {" ", " ", " ",
" ", " ", " ",
" ", " ", " "}
local current_player="X"

function print_board()
    print("\n")
    for i=1,9,3 do
        print(" "..board[i].. " | "..board[i+1].. " | ".. board[i+2])
        if i<7 then
            print("---+---+---")
        end
    end
    print("\n")

end
print("before print board here")

--print_board()
print("after print board here")

-- to check for win
function check_win()
    local wins={
        {1,2,3},{4,5,6},{7,8,9},
        {1,4,7},{2,5,8}, {3,6,9},
        {1,5,9},{3,5,7}
    }
for _, win in ipairs(wins) do
    local a, b, c = win[1], win[2], win[3]
    if board[a] == current_player and board[b] == current_player and
    board[c] ==current_player then
        return true
        end
    end
end


--to check for draw
function is_draw()
        for i=1,9 do
            if board[i] == " " then
                return false
            end
        end
        return true
    end


--switch player
function switch_player() 
        if current_player == "X" then
            current_player = "O"
        else
            current_player = "X"
        end
    end
    
--main game load
function play_game()
    print("begin play game here")

    
        while true do
            print_board()
            io.write("Player ".. current_player .. ". choose a position(1-9): ")
            local pos = tonumber(io.read())
            if pos and pos>=1 and pos <=9 and board[pos] == " " then
                board[pos] = current_player
                
                if check_win() then
                    print_board()
                    print("Player ".. current_player .. " wins!")
                    break
                elseif is_draw() then
                    print_board()
                    print("It is a draw!")
                    break

                else
                    switch_player()
                end
            else
                print("Invalid move. Try again!")
            
            end
        end

    end
--start game

play_game()
print(" playing game here")
    