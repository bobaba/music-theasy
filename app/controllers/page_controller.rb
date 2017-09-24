class PageController < ApplicationController

  def home
  end

  def random_chord
        chords = ["Amaj", "Amaj7", "Amin", "Amin7", "Adim", "Amaj7b5", "Amin7b5", "A6", "Amin6", "Aaug",
    "A#maj", "A#maj7", "A#min", "A#min7", "A#dim", "A#maj7b5", "A#min7b5", "A#6", "A#min6", "A#aug",
    "Bmaj", "Bmaj7", "Bmin", "Bmin7",  "Bdim", "Bmaj7b5", "Bmin7b5", "B6", "Bmin6", "Baug",
    "Cmaj", "Cmaj7", "Cmin", "Cmin7", "Cdim",  "Cmaj7b5", "Cmin7b5", "C6", "Cmin6", "Caug",
    "C#maj", "C#maj7", "C#min", "C#min7", "C#dim",  "C#maj7b5", "C#min7b5", "C#6", "C#min6", "C#aug",
    "Dmaj", "Dmaj7", "Dmin", "Dmin7", "Ddim",  "Dmaj7b5", "Dmin7b5", "D6", "Dmin6", "Daug",
    "D#maj", "D#maj7", "D#min", "D#min7", "D#dim", "D#maj7b5", "D#min7b5", "D#6", "D#min6", "D#aug",
    "Emaj", "Emaj7", "Emin", "Emin7", "Edim",  "Emaj7b5", "Emin7b5", "E6", "Emin6", "Eaug",
    "Fmaj", "Fmaj7", "Fmin", "Fmin7", "Fdim", "Fmaj7b5", "Fmin7b5", "F6", "Fmin6", "Faug",
    "F#maj", "F#maj7", "F#min", "F#min7", "F#dim", "F#maj7b5", "F#min7b5", "F#6", "F#min6", "F#aug",
    "Gmaj", "Gmaj7", "Gmin", "Gmin7",  "Gdim", "Gmaj7b5", "Gmin7b5", "G6", "Gmin6", "Gaug",
    "G#maj", "G#maj7", "G#min", "G#min7", "G#dim", "G#maj7b5", "G#min7b5", "G#6", "G#min6", "G#aug"]
    rand = Random.new
    @first_three = [chords[rand(0..119)], chords[rand(0..119)], chords[rand(0..119)]]
    @more_chords = [chords[rand(0..119)], chords[rand(0..119)], chords[rand(0..119)], chords[rand(0..119)], chords[rand(0..119)]]
  end

  def scale_discovery
    @scale = Scale.where('scale_name = ?', params[:scale_name] || "Ionian")
    @scalenames = Scale.all.map{|s| s.scale_name}

    @startingnote = params[:key] || "C"
    @notes = ["A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab","A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab","A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"]

    @numberofstrings = params[:numberofstrings] || "4"
    if @numberofstrings == "4"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "D"
      @string_three = params[:string_three] || "A"
      @string_four = params[:string_four] || "E"
    elsif @numberofstrings == "6"
      @string_one = params[:string_one] || "E"
      @string_two = params[:string_two] || "A"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "G"
      @string_five = params[:string_five] || "B"
      @string_six = params[:string_six] || "E"
    end

    @instrument_choice = params[:instrument_choice] || "Mandolin"

    if @instrument_choice == "Mandolin"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "D"
      @string_three = params[:string_three] || "A"
      @string_four = params[:string_four] || "E"
    elsif @instrument_choice == "Guitar"
      @string_one = params[:string_one] || "E"
      @string_two = params[:string_two] || "A"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "G"
      @string_five = params[:string_five] || "B"
      @string_six = params[:string_six] || "E"
    elsif @instrument_choice == "Ukelele"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "C"
      @string_three = params[:string_three] || "E"
      @string_four = params[:string_four] || "A"
    elsif @instrument_choice == "Tenor Banjo"
      @string_one = params[:string_one] || "C"
      @string_two = params[:string_two] || "G"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "A"
    elsif @instrument_choice == "Plectrum Banjo"
      @string_one = params[:string_one] || "C"
      @string_two = params[:string_two] || "G"
      @string_three = params[:string_three] || "B"
      @string_four = params[:string_four] || "D"
    end



  end

  def chord_finder
    @chord = Chord.where('chord_name = ?', params[:chord_name] || "Maj")
    @chordnames = Chord.all.map{|s| s.chord_name}
    @startingnote = params[:key] || "C"

    @notes = ["A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab","A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab","A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"]

    @numberofstrings = params[:numberofstrings] || "4"
    if @numberofstrings == "4"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "D"
      @string_three = params[:string_three] || "A"
      @string_four = params[:string_four] || "E"
    elsif @numberofstrings == "6"
      @string_one = params[:string_one] || "E"
      @string_two = params[:string_two] || "A"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "G"
      @string_five = params[:string_five] || "B"
      @string_six = params[:string_six] || "E"
    end

    @instrument_choice = params[:instrument_choice] || "______________"

    if @instrument_choice == "Mandolin"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "D"
      @string_three = params[:string_three] || "A"
      @string_four = params[:string_four] || "E"
    elsif @instrument_choice == "Guitar"
      @string_one = params[:string_one] || "E"
      @string_two = params[:string_two] || "A"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "G"
      @string_five = params[:string_five] || "B"
      @string_six = params[:string_six] || "E"
    elsif @instrument_choice == "Ukelele"
      @string_one = params[:string_one] || "G"
      @string_two = params[:string_two] || "C"
      @string_three = params[:string_three] || "E"
      @string_four = params[:string_four] || "A"
    elsif @instrument_choice == "Tenor Banjo"
      @string_one = params[:string_one] || "C"
      @string_two = params[:string_two] || "G"
      @string_three = params[:string_three] || "D"
      @string_four = params[:string_four] || "A"
    elsif @instrument_choice == "Plectrum Banjo"
      @string_one = params[:string_one] || "C"
      @string_two = params[:string_two] || "G"
      @string_three = params[:string_three] || "B"
      @string_four = params[:string_four] || "D"
    end
  end

  def chord_progressions
  end

  def etude_machine
  end

end
