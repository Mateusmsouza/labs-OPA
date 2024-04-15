package mapalabs

import rego.v1

default allow = false

# allow if user input is from same org
allow if {
	input.org_target == data.users[input.user.name]["organization"]
}
