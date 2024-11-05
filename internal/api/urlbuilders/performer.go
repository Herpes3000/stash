package urlbuilders

import (
	"strconv"

	"github.com/stashapp/stash/pkg/models"
)

type PerformerURLBuilder struct {
	BaseURL     string
	PerformerID string
	UpdatedAt   string
}

func NewPerformerURLBuilder(baseURL string, performer *models.Performer) PerformerURLBuilder {
	return PerformerURLBuilder{
		BaseURL:     baseURL,
		PerformerID: strconv.Itoa(performer.ID),
		UpdatedAt:   strconv.FormatInt(performer.UpdatedAt.Unix(), 10),
	}
}

func (b PerformerURLBuilder) GetPerformerFrontImageURL(hasImage bool) string {
	url := b.BaseURL + "/performer/" + b.PerformerID + "/frontimage?t=" + b.UpdatedAt
	if !hasImage {
		url += "&default=true"
	}
	return url
}

func (b PerformerURLBuilder) GetPerformerBackImageURL() string {
	return b.BaseURL + "/performer/" + b.PerformerID + "/backimage?t=" + b.UpdatedAt
}

func (b PerformerURLBuilder) GetPerformerCenterImageURL() string {
	return b.BaseURL + "/performer/" + b.PerformerID + "/centerimage?t=" + b.UpdatedAt
}
