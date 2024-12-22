proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"
  }
  return [lindex $list $index]
}

# Example usage:
set mylist {a b c d e}
puts [get_element $mylist 2]  ;# Output: c
puts [get_element $mylist 5]  ;# Error: Index out of range