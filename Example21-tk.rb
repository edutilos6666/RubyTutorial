require "tk"


=begin
root = TkRoot.new {title "Hello, World"}
TkLabel.new (root) do
  text "Label1"
  font TkFont.new "times 20 bold"
  pack {padx 15 ; pady 15; width 300; height 50 ;  side "left"}
  foreground "red"
  relief "groove"
  borderwidth 5
end
Tk.mainloop
=end


=begin
def myproc
  puts "The user says OK."
  exit
end


root = TkRoot.new
btn_OK = TkButton.new(root) do
  text "OK"
  borderwidth 5
  underline 0
  state "normal"
  cursor "watch"
  font TkFont.new('times 20 bold')
  foreground  "red"
  activebackground "blue"
  relief      "groove"
  command (proc {myproc})
  pack("side" => "right",  "padx"=> "50", "pady"=> "10")
end
Tk.mainloop
=end


=begin
def onClickBtnOk
  puts "btnOk was clicked"
end

root = TkRoot.new {title "Button example"}
btnOk = TkButton.new(root) do
  text "Ok Button"
  borderwidth 5
  underline 0
  state "normal"
  cursor "watch"
  font TkFont.new ("times 20 bold")
  foreground  "red"
  activebackground "blue"
  relief "groove"
  command (proc{onClickBtnOk})
  pack("side"=>"right", "padx"=> "50", "pady"=> "20")
end

Tk.mainloop
=end



# frame example
=begin
f1 = TkFrame.new  {
  borderwidth 1
  relief "sunken"
  padx 10
  pady 10
  pack("side"=>"left")
  background "red"
}

f2 = TkFrame.new {
  borderwidth 2
  relief "groove"
  background "yellow"
  padx 10
  pady 10
  pack("side"=>"right")
}


TkButton.new(f1) {
  text "Button1"
  command {print "Button1 was clicked.\n"}
  pack("fill"=>"x")
}

TkButton.new(f1) {
  text "Button2"
  command {print "Button2 was clicked.\n"}
  pack("fill"=>"x")
}


TkButton.new(f2) {
  text "Quit"
  command {exit}
  pack("fill"=>"x")
}


Tk.mainloop
=end


# grid layout
mainframe = TkFrame.new {
  borderwidth 1
  background "red"
  relief "groov"
  padx 10
  pady 10
  pack("side"=>"left")
}

TkLabel.new(mainframe) {
  text "Person Details"
  grid("row"=>0 , "column"=>0)
  foreground "white"
  background "red"
}

TkLabel.new(mainframe) {
  text "Id: "
  grid("row"=>1, "column"=> 0)
  foreground "white"
  background "red"
}

entryId = TkEntry.new(mainframe) do
  grid("row"=>1 , "column"=>1)
end


TkLabel.new(mainframe) {
  text "Name: "
  grid("row"=>2 , "column"=>0)
  foreground "white"
  background "red"
}

entryName = TkEntry.new(mainframe) {
  grid("row"=>2 , "column"=>1)
}

TkLabel.new(mainframe) {
  text "Age: "
  grid("row"=>3, "column"=>0)
  foreground "white"
  background "red"
}

entryAge = TkEntry.new(mainframe) {
  grid("row"=>3 , "column"=>1)
}

TkLabel.new(mainframe) {
  text "Wage: "
  grid("row"=>4, "column"=> 0)
  foreground "white"
  background "red"
}

entryWage = TkEntry.new(mainframe) {
  grid("row"=>4 , "column"=>1)
}



def onBtnSubmit()
  puts "here"
  puts entryId
  id = entryId.value
  name = entryName.value
  age  = entryAge.value
  wage = entryWage.value
  puts "#{id}, #{name}, #{age}, #{wage}"
end

def onBtnCancel()
  entryId.value = ""
  entryName.value = ""
  entryAge.value = ""
  entryWage.value = ""
end

TkButton.new(mainframe) {
  text "Submit"
  grid("row"=>5, "column"=>0)
  command {print "Submit buttton was clicked.\n"}
  # that does not work
  # command(proc{onBtnSubmit})
}

TkButton.new(mainframe) {
  text "Cancel"
  grid("row"=>5, "column"=>1)
  command {print "Cancel button was clicked.\n"}
  # that does not work
  #  command(proc{onBtnCancel})
}


Tk.mainloop