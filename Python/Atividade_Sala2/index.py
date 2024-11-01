import random

WINNER_USER = "user"
WINNER_COMPUTER = "computer"

def print_initial_message():
    ''' Prints the initial message '''

    print("JOGO DA VELHA")
    print("O computador começará, jogará com o 'X' e você com a O")
    print("As posições que podem ser escolhidas são representadas por números no tabuleiro abaixo:")

def generate_computer_choice():
    ''' Generates the random computer choice '''

    line = random.randint(0, 2)
    column = random.randint(0, 2)
    return (line, column)

def print_board():
    ''' Prints the board '''

    print(f"| {board[0][0]} | {board[0][1]} | {board[0][2]} |")
    print(f"| {board[1][0]} | {board[1][1]} | {board[1][2]} |")
    print(f"| {board[2][0]} | {board[2][1]} | {board[2][2]} |")

def get_winner():
    ''' Verify with we have one line with only one option, in another words, a winner '''

    # First line
    if board[0][0] == board[0][1] and board[0][0] == board[0][2]:
        if board[0][0] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # Second line
    if board[1][0] == board[1][1] and board[1][0] == board[1][2]:
        if board[1][0] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # Third line
    if board[2][0] == board[2][1] and board[2][0] == board[2][2]:
        if board[2][0] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # First column
    if board[0][0] == board[1][0] and board[0][0] == board[2][0]:
        if board[0][0] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # Second column
    if board[0][1] == board[1][1] and board[0][1] == board[2][1]:
        if board[0][1] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # Third column
    if board[0][2] == board[1][2] and board[0][2] == board[2][2]:
        if board[0][2] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # First diagonal
    if board[0][0] == board[1][1] and board[0][0] == board[2][2]:
        if board[0][0] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    # Second diagonal
    if board[0][2] == board[1][1] and board[0][2] == board[2][0]:
        if board[0][2] == "X":
            return WINNER_COMPUTER
        else:
            return WINNER_USER

    return None

def get_board_line_index_by_zero(position):
    ''' Returns the board line to the position indexed by zero '''
    ''' 1 | 2 | 3 <= positions of the line 1 '''
    ''' 4 | 5 | 6 <= positions of the line 2 '''
    ''' 7 | 8 | 9 <= positions of the line 3 '''

    return (position - 1) // 3

def get_board_column_index_by_zero(position):
    ''' Returns the board columns to the position indexed by zero '''
    ''' 1   2   3 <= columns of the positions in the board '''
    ''' 1 | 2 | 3 '''
    ''' 4 | 5 | 6 '''
    ''' 7 | 8 | 9 '''

    return (position - 1) % 3

def cell_is_filled(line, column):
    ''' Returns true if the cell is filled with a computer or a user option '''
    return board[line][column] == "X" or board[line][column] == "O"

board = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
print_initial_message()
attempts = 0

while True:
    while True:
        computer_choice = generate_computer_choice()
        if not cell_is_filled(computer_choice[0], computer_choice[1]):
            # print(computer_choice)
            board[computer_choice[0]][computer_choice[1]] = "X"
            attempts += 1
            break

    winner = get_winner()
    if winner != None:
        if winner == WINNER_USER:
            print("Você ganhou")
        else:
            print("O computador ganhou")
        print_board()
        quit()
    else:
        print_board()

        if attempts == 9:
            print("Empate!")
        else:
            while True:
                try:
                    position = int(input("Escolha uma posição conforme você viu no tabuleiro: "))
                                
                    if position < 1 or position > 9:
                        raise ValueError("")
                except ValueError:
                    print("Tente novamente, o número não é válido no intervalo de 1 a 9: ")
                    continue
    
                line = get_board_line_index_by_zero(position)
                column = get_board_column_index_by_zero(position)

                if cell_is_filled(line, column):
                    print("Tente novamente, esta célula já está preenchida")
                    continue
                else:
                    board[line][column] = "O"

                    attempts += 1
                    winner = get_winner()
                    if winner != None:
                        if winner == WINNER_USER:
                            print("Você ganhou")
                        else:
                            print("O computador ganhou")
                        quit()
                    break
