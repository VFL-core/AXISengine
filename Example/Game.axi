inject {"webview"}
inject {"plugin"}
inject {"utils"}

plugin "TapSquareGame":
    score = 0

    # Function to spawn a new square
    def spawn_square():
        x = randint(50, 350)
        y = randint(50, 350)
        size = 50
        return { "x": x, "y": y, "size": size }

    # Function to start the game
    def start_game():
        square = spawn_square()

        # Handle clicks
        def on_click(mx, my):
            if square["x"] <= mx <= square["x"] + square["size"] and square["y"] <= my <= square["y"] + square["size"]:
                score = score + 1
                :show;("Score: " + str(score))
                square = spawn_square()

        # Launch game canvas
        webview::hook-url("game_canvas.html") +dimensions(400 * 400) +resizable :show;

# Start the game
TapSquareGame.start_game()
