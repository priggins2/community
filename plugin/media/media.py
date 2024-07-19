from talon import Module, actions, app

mod = Module()


@mod.action_class
class Actions:
    def play_pause():
        """Plays or pauses media"""
        if app.platform == "windows":
            actions.key("play_pause")
        else:
            actions.key("play")

    # def media_set_volume(volume: int):
    #     """change the volume"""
    #     applescript.run(f"""set volume output volume {volume}""")