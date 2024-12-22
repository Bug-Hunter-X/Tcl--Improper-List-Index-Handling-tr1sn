proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return "" ;#Return empty string or other default value
  } else { 
    return [lindex $list $index]
  }
}

#Example usage
set mylist {a b c d e}
puts [get_element $mylist 2]  ;# Output: c
puts [get_element $mylist 5]  ;# Output: 

#Alternative solution using error handling
proc get_element2 {list index} {
    catch {return [lindex $list $index]} msg
    if {$msg != ""} {
        return -code error "Index out of range: $msg"
    }
}
puts [get_element2 $mylist 2] ;# Output: c
puts [get_element2 $mylist 5] ;#Output: Index out of range