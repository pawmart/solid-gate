package controllers

import (
	"github.com/beego/beego/v2/server/web"
	"strings"
)

type BaseController struct {
	web.Controller
}

func (c *BaseController) Prepare() {
	host := c.Ctx.Request.Host

	langMap := map[string]string{
		"es": "es-ES",
		"fr": "fr-FR",
		"pl": "pl-PL",
	}

	lang := "en-US"

	if parts := strings.SplitN(host, ".", 2); len(parts) > 1 {
		subdomain := parts[0]
		if mappedLang, exists := langMap[subdomain]; exists {
			lang = mappedLang
		}
	}

	c.Data["lang"] = lang
	c.Data["Website"] = "solid-state.eu"
	c.Data["Email"] = "info@solid-state.eu"
	c.Layout = "layout.tpl"
}
