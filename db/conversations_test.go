package db

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestConversations(t *testing.T) {
	SetupDatabaseForTests(t)
	// ConversationsTestID(t)
}

func ConversationsTestID(t *testing.T) {
	conversations := getConversationsWithFriend("karateAMD", "10.192.345.987")
	assert.Equal(t, 3, len(conversations))
	assert.Equal(t, uint64(34), conversations[0].Session.SSID)
	assert.Equal(t, uint64(34), conversations[1].Message.SSID)
	assert.Equal(t, uint64(34), conversations[2].Session.SSID)
	assert.Equal(t, []byte("When are we playing Fortnite?"), conversations[2].Message.Text)
}
