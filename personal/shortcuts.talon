streamlit run qualtrics:
    insert("streamlit run qualtrics/app.py")
    
griddy: user.flex_grid_activate()

customize to do: 
    user.edit_text_file("{path.talon_user()}/community/personal/TODO.md")
    sleep(500ms)
    edit.file_end()

whisper cpu diarize:
    insert("whisperx --compute_type 'int8' --hf_token $HF_TOKEN --language en --diarize ")