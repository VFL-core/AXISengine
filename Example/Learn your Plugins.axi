inject {"plugin"}

plugin "FileLogger":
    version = "1.0"

    def on_save(file):
        :show;("File saved: " + file.name)
