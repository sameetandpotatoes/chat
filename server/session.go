package server

import (
	"chat/protocol"
	"time"
)

type Session struct {
	From *User
	To *Friend
	Proto protocol.Protocol
	StartTime time.Time
}

// Return a new session between two users with a protocol
func NewSession(from *User, to *Friend, protocol protocol.Protocol, startTime time.Time) (*Session) {
	session := new(Session)
	(*session).From = from
	(*session).To = to
	(*session).Proto = protocol
	(*session).StartTime = startTime
	return session
}

// Ends the current session
func (s *Session) EndSession() {
	s.Proto.EndSession()
}

// Returns true if the session is conversing with a use defined by their SourceIP address
func (s *Session) ConverseWith(sourceIp string) bool {
	return (*s.To).IP == sourceIp
}